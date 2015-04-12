class Game < ActiveRecord::Base
  validates_associated :games_teams_users
  validates :games_teams_users, length: { is: 2 }

  has_many :games_teams_users
  has_many :teams, through: :games_teams_users
  has_many :users, through: :games_teams_users

  def final_scoreline
    score = games_teams_users.map(&:score).sort.reverse.join(' - ')
    score = "#{score} (#{tiebreaker})" if tiebreaker
    score
  end

end
