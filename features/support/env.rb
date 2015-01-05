$LOAD_PATH << File.expand_path('../../../lib', __FILE__)
require 'codebreaker'

=begin
class Output1
  def messages
    @messages ||= []
  end
  def puts(message)
    @messages << message
  end
end

def output
 @output ||= Output1.new
end
=end