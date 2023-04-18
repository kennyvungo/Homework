class Board
  attr_accessor :cups,:name1,:name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new}
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each.with_index {|el,i| @cups[i] = [:stone,:stone,:stone,:stone] if i != 6 && i != 13}
  end

  def valid_move?(start_pos)
    if start_pos > 13 || start_pos < 0
      raise "Invalid starting cup"
    end
    if @cups[start_pos].empty? 
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    num_stones = @cups[start_pos].length
    @cups[start_pos] = []
    curr_index = start_pos + 1
    curr_index = curr_index % 14
    return curr_index
    until num_stones == 0
      curr_index = curr_index % 14
      case curr_index
      when 0..5
        @cups[curr_index] << :stone
        curr_index += 1
        num_stones -= 1
      when 7..12
        @cups[curr_index] << :stone
        curr_index += 1
        num_stones -= 1
      end
    end
    self.render
    self.next_turn(curr_index)
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