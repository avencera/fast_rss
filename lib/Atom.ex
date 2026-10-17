defmodule FastRSS.Atom do
  @type feed :: %{
          title: text(),
          id: String.t(),
          updated: String.t(),
          authors: list(person()),
          categories: list(category()),
          contributors: list(person()),
          generator: generator() | nil,
          icon: String.t() | nil,
          links: list(link()),
          logo: String.t() | nil,
          rights: text() | nil,
          subtitle: text() | nil,
          entries: list(entry()),
          extensions: map(),
          namespaces: map(),
          base: String.t() | nil,
          lang: String.t() | nil
        }

  @type person :: %{
          name: String.t(),
          email: String.t() | nil,
          uri: String.t() | nil
        }

  @type category :: %{
          term: String.t(),
          scheme: String.t() | nil,
          label: String.t() | nil
        }

  @type generator :: %{
          value: String.t(),
          uri: String.t() | nil,
          version: String.t() | nil
        }

  @type link :: %{
          href: String.t(),
          rel: String.t(),
          hreflang: String.t() | nil,
          mime_type: String.t() | nil,
          title: String.t() | nil,
          length: String.t() | nil
        }

  @type entry :: %{
          title: text(),
          id: String.t(),
          updated: DateTime.t(),
          authors: list(person()),
          categories: list(category()),
          contributors: list(person()),
          links: list(link()),
          published: String.t() | nil,
          rights: text() | nil,
          source: source() | nil,
          summary: text() | nil,
          content: content() | nil,
          extensions: map()
        }

  @type content :: %{
          base: String.t() | nil,
          lang: String.t() | nil,
          value: String.t() | nil,
          src: String.t() | nil,
          content_type: String.t() | nil
        }

  @type source :: %{
          title: text(),
          id: String.t(),
          updated: DateTime.t(),
          authors: list(person()),
          categories: list(category()),
          contributors: list(person()),
          generator: generator() | nil,
          icon: String.t() | nil,
          links: list(link()),
          logo: String.t() | nil,
          rights: text() | nil,
          subtitle: text() | nil
        }

  @type text :: %{
          content: String.t(),
          type: String.t() | nil
        }
end
