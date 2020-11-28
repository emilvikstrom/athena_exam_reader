defmodule AthenaExamReaderWeb.PageController do
  use AthenaExamReaderWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
