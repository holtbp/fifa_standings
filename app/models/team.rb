class Team < ActiveRecord::Base
  belongs_to :league

  has_many :games_teams_users
  has_many :games, through: :games_teams_users
  has_many :users, through: :games_teams_users

  def victories
    games_teams_users.where(is_winner: true).count
  end

  def losses
    games_teams_users.where(is_winner: false).count
  end

end
