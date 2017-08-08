class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) {Array.new}
    @cups.each_with_index do |cup, i|
      unless i == 6 || i == 13
        4.times do
          cup << :stone
        end
      end
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    unless start_pos.between?(1,14)
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    in_hand = @cups[start_pos]
    @cups[start_pos] = []
    i = 0
    until in_hand.empty?

      i += 1
      @cups[start_pos + i] << in_hand.pop
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end


# cups = Array.new(14) {Array.new}
# cups.map!.with_index do |cup, i|
#   if i == 6 && i == 13
#     cup
#   else
#     4.times do
#       cup << :stone
#     end
#   end
