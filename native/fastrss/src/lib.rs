use rustler::schedule::SchedulerFlags;
use rustler::{Encoder, Env, Error as RustlerError, NifResult, Term};
use serde_json::json;

mod atoms {
    rustler::rustler_atoms! {
        atom ok;
        atom error;
    }
}

rustler::rustler_export_nifs! {
    "Elixir.FastRSS.Native",
    [
        ("parse", 1, parse, SchedulerFlags::DirtyCpu),
    ],
    None
}

fn parse<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    let input: Result<&str, &str> = args[0].decode().map_err(|err| match err {
        RustlerError::BadArg => "Invalid argument passed to FastRSS",
        RustlerError::RaiseAtom(string) => string,
        RustlerError::RaiseTerm(_) => "Unknown error getting rss string",
        RustlerError::Atom(string) => string,
    });

    match input {
        Ok(rss_string) => {
            let channel = rss::Channel::read_from(rss_string.as_bytes())
                .map_err(|err| format!("Unable to parse RSS - ({:?})", err));

            let ser = serde_rustler::Serializer::from(env);
            let de = json!(channel);
            let encoded = serde_transcode::transcode(de, ser)
                .map_err(|_err| "Unable to encode to erlang terms");

            match encoded {
                Ok(term) => Ok(term),
                Err(error_message) => Ok((atoms::error(), error_message).encode(env)),
            }
        }
        Err(error_message) => Ok((atoms::error(), error_message).encode(env)),
    }
}
