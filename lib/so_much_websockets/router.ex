defmodule SoMuchWebsockets.Router do
  use Phoenix.Router, 
    port: 4000,
    dispatch: [
      { :_, [
          {"/stylesheets/[...]", :cowboy_static, {:dir, "priv/static/stylesheets"}},
          {"/javascript/[...]", :cowboy_static, {:dir, "priv/static/javascript"}},
          {"/ws", SoMuchWebsockets.WebSocketHandler, [] },
          {:_, Plug.Adapters.Cowboy.Handler, { __MODULE__, [] }}
      ]}
    ]

  get "/", SoMuchWebsockets.Controllers.Pages, :index, as: :page
end
