class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @side = 6
    @opp = 13
    @cups = Array.new(14)
    cups[6] = []
    cups[13] = []
    (0..13).each do |i|
      if i !=6 && i !=13
        cups[i] = [:stone, :stone, :stone, :stone]
      end

    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 13
      raise "Invalid starting cup"
    end
    if cups[start_pos].length == 0
      raise 'Starting cup is empty'
    end
    
  end

  def make_move(start_pos, current_player_name)
    if current_player_name == @name2
      @side = 13
      @opp = 6
    else 
      @side = 6
      @opp = 13
    end
    temp = cups[start_pos].dup
    cups[start_pos] = []
    i = 0
    while !temp.empty? 
      i += 1
      index = (i+start_pos) % 14
      if index != @opp
        cups[index] << temp.shift
      end
    end
    render
    next_turn((start_pos + i)%14)
  end

  def next_turn(ending_cup_idx)
    return (:prompt) if ending_cup_idx == @side
    return (:switch) if cups[ending_cup_idx].length == 1
    return ending_cup_idx if cups[ending_cup_idx].length > 1
     # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    bool1 =  cups[0..5].all? { |ele| ele.empty?}
    bool2 =  cups[6..12].all? { |ele| ele.empty?}
    bool1 || bool2

  end

  def winner
    sc = cups[@side].length
    oc = cups[@opp].length
    return :draw if sc ==6 and oc ==6
    if sc == 6
      return @name1
    elsif oc == 6
      return @name2
    end
  end
end
