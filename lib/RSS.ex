defmodule FastRSS.RSS do
  @type channel :: %{
          title: String.t(),
          link: String.t(),
          description: String.t(),
          language: String.t() | nil,
          copyright: String.t() | nil,
          managing_editor: String.t() | nil,
          webmaster: String.t() | nil,
          pub_date: String.t() | nil,
          last_build_date: String.t() | nil,
          categories: list(category()),
          generator: String.t() | nil,
          docs: String.t() | nil,
          cloud: cloud() | nil,
          rating: String.t() | nil,
          ttl: String.t() | nil,
          image: image() | nil,
          text_input: text_input() | nil,
          skip_hours: list(String.t()),
          skip_days: list(String.t()),
          items: list(item()),
          extensions: map(),
          itunes_ext: itunes_channel_extension() | nil,
          dublin_core_ext: dublin_core_extension() | nil,
          syndication_ext: syndication_extension() | nil,
          namespaces: map()
        }

  @type cloud :: %{
          domain: String.t(),
          port: String.t(),
          path: String.t(),
          register_procedure: String.t(),
          protocol: String.t()
        }

  @type image :: %{
          url: String.t(),
          title: String.t(),
          link: String.t(),
          width: String.t() | nil,
          height: String.t() | nil,
          description: String.t() | nil
        }

  @type text_input :: %{
          title: String.t(),
          description: String.t(),
          name: String.t(),
          link: String.t()
        }

  @type item :: %{
          title: String.t() | nil,
          link: String.t() | nil,
          description: String.t() | nil,
          author: String.t() | nil,
          categories: list(category()),
          comments: String.t() | nil,
          enclosure: enclosure() | nil,
          guid: guid() | nil,
          pub_date: String.t() | nil,
          source: source() | nil,
          content: String.t() | nil,
          extensions: map(),
          itunes_ext: itunes_item_extension() | nil,
          dublin_core_ext: dublin_core_extension() | nil
        }

  @type category :: %{
          name: String.t(),
          domain: String.t() | nil
        }

  @type enclosure :: %{
          url: String.t(),
          length: String.t(),
          mime_type: String.t()
        }

  @type guid :: %{
          value: String.t(),
          permalink: boolean()
        }

  @type itunes_channel_extension :: %{
          author: String.t() | nil,
          block: String.t() | nil,
          categories: list(itunes_category()),
          image: String.t() | nil,
          explicit: String.t() | nil,
          complete: String.t() | nil,
          new_feed_url: String.t() | nil,
          owner: itunes_owner() | nil,
          subtitle: String.t() | nil,
          summary: String.t() | nil,
          keywords: String.t() | nil,
          type: String.t() | nil
        }

  @type dublin_core_extension :: %{
          contributors: list(String.t()),
          coverages: list(String.t()),
          creators: list(String.t()),
          dates: list(String.t()),
          descriptions: list(String.t()),
          formats: list(String.t()),
          identifiers: list(String.t()),
          languages: list(String.t()),
          publishers: list(String.t()),
          relations: list(String.t()),
          rights: list(String.t()),
          sources: list(String.t()),
          subjects: list(String.t()),
          titles: list(String.t()),
          types: list(String.t())
        }

  @type syndication_extension :: %{
          period: atom(),
          frequency: non_neg_integer(),
          base: String.t()
        }

  @type source :: %{
          url: String.t(),
          title: String.t()
        }

  @type itunes_category :: String.t()

  @type itunes_owner :: %{
          name: String.t() | nil,
          email: String.t() | nil
        }

  @type itunes_item_extension :: %{
          author: String.t() | nil,
          block: String.t() | nil,
          duration: String.t() | nil,
          explicit: String.t() | nil,
          keywords: String.t() | nil,
          subtitle: String.t() | nil,
          summary: String.t() | nil,
          title: String.t() | nil
        }
end
