defmodule StoneAPI.Repo.Migrations.AddRelationUserAccount do
  use Ecto.Migration

  def change do
     alter table(:accounts) do
      add :user_id, references(:users, type: :uuid)
    end
  end
end
