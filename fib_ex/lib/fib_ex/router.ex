defmodule FibEx.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    send_resp(conn, 200, "Welcome")
  end

  get "/fib/:number" do
    result =
      conn.params["number"]
      |> String.to_integer()
      |> Fib.fib()
      |> to_string()

    send_resp(conn, 200, result)
  end

  match _ do
    send_resp(conn, 404, "Oops!")
  end
end
