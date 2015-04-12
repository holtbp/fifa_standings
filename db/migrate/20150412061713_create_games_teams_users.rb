class CreateGamesTeamsUsers < ActiveRecord::Migration
  def change
    create_table :games_teams_users do |t|
      t.integer :game_id
      t.integer :team_id
      t.integer :user_id

      t.integer :score
      t.boolean :is_winner

      t.timestamps null: false
    end

    add_index :games_teams_users,
              [:game_id, :team_id, :user_id],
              unique: true
  end
end
