use rss::Channel;
use rustler::{Encoder, Env, Error, Term};
use serde_json::json;

mod atoms {
    rustler::rustler_atoms! {
        atom ok;
    }
}

rustler::rustler_export_nifs! {
    "Elixir.FastRSS.Native",
    [
        ("parse", 1, parse)
    ],
    None
}

fn parse<'a>(env: Env<'a>, args: &[Term<'a>]) -> Result<Term<'a>, Error> {
    let rss_string: &str = args[0].decode()?;

    let rss_parsed = Channel::read_from(rss_string.as_bytes()).unwrap();

    let json = json!(rss_parsed);

    Ok((atoms::ok(), json.to_string()).encode(env))
}
