class StatisticsController < ApplicationController
  def index
    # We are purposefully referring to only one player, you don't need to worry
    # about this.
    @player = Player.find_by_uuid('8CD7F0AB-6F0F-4ECC-8F5C-CDEF8C11B261')

    # Remember, fat models and skinny controllers...
    @goals = 0
    @assists = 0

    @player.game_performances.each do |game|
      @goals += game.goals
    end

    @average_goals = @goals / @player.game_performances.count.to_f

    @player.game_performances.each do |game|
      @assists += game.assists
    end

    @average_assists = @assists / GamePerformance.all.count

    @average_yellow_cards = calculate_average_for_average_yellow_cards

    @average_red_cards = calculate_average_for_average_red_cards

    @average_spg = calculate_average_for_shots_per_game

    @average_psp = calculate_average_for_pass_success_percentage

    @average_duels = calculate_average_for_aerial_duels_won
  end

  def calculate_average_for_average_yellow_cards
    @average_yellow_cards = 0
    cards = @player.game_performances.map { |game| game.yellow_cards }
    @count = GamePerformance.where(:player_id => @player.id).count
    amt = cards.inject(:+) / @count

    @average_yellow_cards = amt
  end

  def calculate_average_for_average_red_cards
    @average_red_cards = 0
    cards = @player.game_performances.map { |game| game.red_cards }
    @count = GamePerformance.where(:player_id => @player.id).count
    amt = cards.inject(:+) / @count

    @average_red_cards = amt
  end

  def calculate_average_for_shots_per_game
    @average_spg = 0
    spg = @player.game_performances.map { |game| game.shots_per_game }
    count = GamePerformance.where(:player_id => @player.id).count
    amt = spg.inject(:+) / count

    @average_spg = amt
  end

  def calculate_average_for_pass_success_percentage
    @average_psp = 0
    psp = @player.game_performances.map { |game| game.pass_success_percentage }
    count = GamePerformance.where(:player_id => @player.id).count
    amt = psp.inject(:+) / count.to_f

    @average_psp = amt
  end

  def calculate_average_for_aerial_duels_won
    @average_duels = 0
    duels = @player.game_performances.map { |game| game.aerial_duels_won }
    count = GamePerformance.where(:player_id => @player.id).count
    amt = duels.inject(:+) / count

    @average_duels = amt
  end

end