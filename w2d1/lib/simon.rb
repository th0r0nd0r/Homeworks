class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = []
    @game_over = false
  end

  def play
    until @game_over
      self.take_turn
    end

    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    @sequence_length += 1
    self.require_sequence

    unless @game_over
      self.round_success_message
    end

  end

  def show_sequence
    self.add_random_color
    puts @seq
  end

  def require_sequence
    puts "input sequence"
    input = gets.chomp
    if input.split(",") != @seq
      self.game_over_message
      @game_over = true
    end
  end

  def add_random_color
    colors = %w(red blue yellow green)
    @seq << colors.shuffle[0]
  end

  def round_success_message
    puts "ROUND SUCCES"
  end

  def game_over_message
    puts "GAME OVER"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
