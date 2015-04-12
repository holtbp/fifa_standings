class User < ActiveRecord::Base
  has_many :games_teams_users
  has_many :games, through: :games_teams_users
  has_many :teams, through: :games_teams_users
end
