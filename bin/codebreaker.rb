#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'codebreaker'
game = Codebreaker::Game.new(STDOUT)
secret = ""
(0..4).each do
 secret << (1 + rand(6)).to_s 
end
game.start(secret)
while guess = gets.chomp
  game.guess(guess)
end