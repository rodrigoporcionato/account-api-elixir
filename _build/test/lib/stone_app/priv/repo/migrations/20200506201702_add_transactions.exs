defmodule StoneAPI.Repo.Migrations.AddTransactions do
  use Ecto.Migration

  def change do
    create table(:transactions, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :amount, :decimal, null: false      
      add :transaction_type, :string, null: false
      add :date_created, :date , null: false
      add :account_id, references(:accounts, type: :uuid)
    end
  end
end
