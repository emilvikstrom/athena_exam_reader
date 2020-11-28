defmodule AthenaExamReader.Repo do
  use Ecto.Repo,
    otp_app: :athena_exam_reader,
    adapter: Ecto.Adapters.Postgres
end
