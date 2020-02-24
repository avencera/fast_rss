use rss;
use rustler::schedule::SchedulerFlags;
use rustler::{Env, NifResult, Term};
use serde_json;
use serde_json::json;

use serde_rustler;
use serde_transcode;

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
    let rss_string: &str = serde_rustler::from_term(args[0])?;

    let channel = rss::Channel::read_from(rss_string.as_bytes())
        .map_err(|err| format!("Unable to parse RSS - ({:?})", err));

    let ser = serde_rustler::Serializer::from(env);
    let de = json!(channel);
    let encoded =
        serde_transcode::transcode(de, ser).map_err(|_err| "Unable to encode to erlang terms");

    match encoded {
        Ok(term) => Ok(term),
        Err(error_message) => Err(rustler::error::Error::Atom(error_message)),
    }
}
