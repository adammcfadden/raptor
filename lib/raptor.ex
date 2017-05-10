defmodule Raptor.Server do
  @moduledoc """
  Raptor.Service starts the Raptor.Worker, and keeps it alive
  """

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Raptor.Worker, [])
    ]

    opts = [strategy: :one_for_one, name: Raptor.Supervisor]
    Supervisor.start_link(children, opts)
  end

end

defmodule Raptor.Worker do
  @moduledoc """
  Raptor.Worker serves up static files at localhost:4000
  It serves it's current location as the root
  """

  use Plug.Builder

  plug Plug.Logger

  plug Plug.Static,
  at: "/",
  from: "."

  plug :not_found

  def init(options) do
    options
  end

  def not_found(conn, _) do
    send_resp(conn, 404, "not found")
  end

  def start_link do
    {:ok, _} = Plug.Adapters.Cowboy.http Raptor.Worker, []
  end
end
