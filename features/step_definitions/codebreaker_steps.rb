Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  @messenger = StringIO.new
  game = Codebreaker::Game.new(@messenger)
  game.start('1234')
end

Then /^I should see "([^"]*)"$/ do |message|
  expect(@messenger.string.split("\n")).to include(message)
end


Given /^the secret code is "([^"]*)"$/ do |secret|
  @messenger = StringIO.new
  @game = Codebreaker::Game.new(@messenger)
  @game.start(secret)
end

When /^I guess "([^"]*)"$/ do |guess|
  @game.guess(guess)
end

Then /^the mark should be "([^"]*)"$/ do |mark|
  if( @messenger.string.split("\n").count == 2 )
    true.should == true
  else 
    @messenger.string.split("\n").should include(mark)
  end
end