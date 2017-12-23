defmodule Dand.Requests.Ticket do
  use Ecto.Schema
  import Ecto.Changeset
  alias Dand.Requests.Ticket


  schema "tickets" do
    field :message, :string
    field :subject, :string

    timestamps()
  end

  @doc false
  def changeset(%Ticket{} = ticket, attrs) do
    ticket
    |> cast(attrs, [:subject, :message])
    |> validate_required([:subject, :message])
  end
end
