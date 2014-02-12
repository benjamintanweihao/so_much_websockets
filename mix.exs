defmodule SoMuchWebsockets.Mixfile do
  use Mix.Project

  def project do
    [ app: :so_much_websockets,
      version: "0.0.1",
      elixir: "~> 0.12.2",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { SoMuchWebsockets, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      { :phoenix, github: "chrismccord/phoenix" },
      { :plug, git: "https://github.com/elixir-lang/plug.git", tag: "v0.2.0", override: true },

    ]
  end
end
