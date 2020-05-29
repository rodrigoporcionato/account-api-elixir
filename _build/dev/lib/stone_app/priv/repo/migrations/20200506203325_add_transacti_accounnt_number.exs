defmodule StoneAPI.Repo.Migrations.AddTransactiAccounntNumber do
  use Ecto.Migration

  def change do
    alter table(:transactions) do
      add :account_destination, :string, null: false
    end
  end
end
