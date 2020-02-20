use rss::Channel;
use rustler::{Encoder, Env, Error as RustlerError, Term};
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
        ("parse", 1, parse)
    ],
    None
}

fn parse<'a>(env: Env<'a>, args: &[Term<'a>]) -> Result<Term<'a>, RustlerError> {
    let rss_string: &str = args[0].decode()?;

    let json = parse_and_encode(rss_string);

    match json {
        Ok(json) => Ok((atoms::ok(), json).encode(env)),
        Err(err) => Ok((
            atoms::error(),
            format!("Unable to parse RSS (debug: {:?})", err),
        )
            .encode(env)),
    }
}

fn parse_and_encode(rss_string: &str) -> Result<String, rss::Error> {
    let rss_parsed = Channel::read_from(rss_string.as_bytes())?;
    Ok(json!(rss_parsed).to_string())
}
