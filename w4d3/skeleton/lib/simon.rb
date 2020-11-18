class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while @game_over == false
      take_turn
    end
    game_over_message
    reset_game

  end

  def take_turn
      show_sequence
      require_sequence
      if @game_over == false
        round_success_message
      else
        @sequence_length += 1
      end
    end

  def show_sequence
    add_random_color
    p seq
    sleep(4)
  end

  def require_sequence
    puts `clear`
    print "Enter Color Squence:"
    input_seq = gets.chop.split(" ").map{|ele| ele.downcase}
    if input_seq != seq
      @game_over = true 
    else 
      @game_over = false
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    p "passed round"
    sleep(4)
  end

  def game_over_message
    p "Game Over, booo...."
    sleep(4)
  end

  def reset_game
    @sequence_length = 1
    @game_over =  false
    @seq = []
  end
end

Simon.new.play