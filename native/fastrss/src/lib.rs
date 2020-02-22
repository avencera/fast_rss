use rss;
use rustler::{Env, NifResult, Term};
use serde_rustler;

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

fn parse<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    let rss_string: &str = serde_rustler::from_term(args[0])?;

    let channel = parse_and_encode(rss_string);

    let result = match channel {
        Ok(json) => Ok(json),
        Err(err) => Err(format!("Unable to parse RSS (debug: {:?})", err)),
    };

    let a = serde_rustler::to_term(env, result);

    match &a {
        Ok(b) => {
            println!("OK: {:?}", &b);
            a.map_err(|e| e.into())
        }
        Err(b) => {
            println!("ERR: {:?}", b);
            a.map_err(|e| e.into())
        }
    }
}

fn parse_and_encode(rss_string: &str) -> Result<rss::Channel, rss::Error> {
    rss::Channel::read_from(rss_string.as_bytes())
}
