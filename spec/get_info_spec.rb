
require 'get_info'

describe "conect_to_page" do
  it 'Scrapes all the data from the page' do
    expect(conect_to_page.is_a?(Object)).to eq(true)
  end
end

describe '#lawyer_name' do
  it 'It should scrape all the lawyers names from the site' do
    expect(lawyer_name[0].is_a?(Object)).to eq(true)
  end 
end

describe '#working_time' do
  it 'It should scrape all lawyers working times' do
    expect(working_time.class).to eq(Nokogiri::XML::NodeSet)
  end
end

describe '#phone_number' do
  it 'It should scrape first lawyer phone number and return it as a string' do
    expect(phone_number[0].content).to eq("(8 670) 77108")
  end
end

describe '#website_link' do
  it 'It should scrape second lawyer website link and return it as a string' do
    expect(website_link[1]['href']).to eq("http://www.teisesriba.lt")
  end
end

describe '#lawyer_address' do
  it 'It should scrape first lawyer phone number and return it as a string' do
    expect(lawyer_address.last.content.is_a?(Array)).not_to be(true)
  end
end



















# require_relative '../lib/player.rb'

# describe Player do
#   subject(:instance) { Player.new('somename', 'X') }

#   describe '#initialize' do
#     it 'It should expect name instance values class as string' do
#       expect(instance.name.class).to eq(String)
#     end

#     it 'It should expect mark instance values class as string' do
#       expect(instance.mark.class).to eq(String)
#     end
#   end

#   describe 'self.my_move' do
#     let(:object) { Player.new('Visvaldas', 'O') }
#     let(:move_valid) { 5 }
#     context 'it should fail from test if same move is taken or self.draw_board is not updated' do
#       it 'should return argument itself' do
#         expect(object.my_move(move_valid)).to eq(move_valid)
#       end
#     end
#   end
# end


# require_relative '../lib/board.rb'

# describe Board do
#   describe '#self.make_move' do
#     let(:move_invalid) { 32 }
#     let(:move_valid) { 4 }
#     let(:mark) { 'X' }

#     it 'should prompt that move is invalid' do
#       expect(Board.make_move(move_invalid, mark)).to eq('Invalid move, enter a numbe in range 1..9')
#     end

#     it 'should prompt X since move is in valid range(1..9)' do
#       expect(Board.make_move(move_valid, mark)).to eq('X')
#     end
#   end

#   describe 'self.draw_board' do
#     let(:positions) { [] }
#     it "should display the board with user selection in 4 as 'X' " do
#       positions = (1..9).to_a
#       expect(Board.draw_board).to eq(
#         "
#     #{positions[0]} | #{positions[1]} | #{positions[2]}
#     =========
#     X | #{positions[4]} | #{positions[5]}
#     =========
#     #{positions[6]} | #{positions[7]} | #{positions[8]}
#     "
#       )
#     end
#   end

#   describe 'self.position_empty?' do
#     let(:move) { 4 }
#     it 'Checking if position is emty, it should return false since 4 is taken' do
#       expect(Board.position_empty?(move)).to eq(false)
#     end
#   end
# end

# describe Array do
#   let(:object) { [] }
#   let(:test_arr) { [] }
#   describe '#contain_all?' do
#     it 'It compares object & argument arrays & return false if they are not same' do
#       object = [1, 4, 3]
#       test_arr = [1, 2, 3]
#       expect(object.contain_all?(test_arr)).to eq(false)
#     end
#   end
# end

# describe PlayGame do
#   let(:possible_wins) { [[1, 2, 3], [4, 5, 6]] }
#   let(:player_choices) { [1, 2, 3] }

#   describe 'self.won?' do
#     it 'Expect true if it finds player_choises array in POSSIBLE_WINS array' do
#       possible_wins = [[1, 2, 3], [4, 5, 6]]
#       player_choices = [1, 2, 3]
#       expect(possible_wins.any?(player_choices)).to eq(true)
#     end
#   end
# end
