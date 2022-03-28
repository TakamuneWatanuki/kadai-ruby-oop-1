class Team
  
  attr_accessor :name, :win, :lose, :draw
  
  def initialize(name, win, lose)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = 120 - (win + lose)
  end
  
  def calc_win_rate
    self.win.to_f / (self.win + self.lose)
  end
  
  def show_team_result
    puts "#{self.name} の2022年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
  end
end

giants = Team.new("Giants", 67, 45)
tigers = Team.new("Tigers", 60, 53)
dragons = Team.new("Dragons", 60, 55)
bayStars = Team.new("BayStars", 56, 58)
carp = Team.new("Carp", 52, 56)
swallows = Team.new("Swallows", 41, 69)

giants.show_team_result
tigers.show_team_result
dragons.show_team_result
bayStars.show_team_result
carp.show_team_result
swallows.show_team_result
  