defmodule StoneAPI.Repo.Migrations.CreateAccount do
  use Ecto.Migration

  def change do
    create table(:accounts, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :account_number, :string, null: false
      add :limit, :decimal, null: false
      add :limit_used, :decimal, null: false
      add :date_created, :date , null: false
    end
  end
end
