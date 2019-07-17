require "rspec"
require "rps_game"
describe('RPS') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new("rock")
    computer_choice = "scissors"
    expect(game.winner).to(eq(true))
  end
end
