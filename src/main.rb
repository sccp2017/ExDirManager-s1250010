require_relative "./cmdps.rb"
require_relative "./dir-repository.rb"

class Main
  def initialize
    cmd = Command_parser.new(ARGV).parse
    DirRepository.new(cmd.dir_name , cmd.header , cmd.max).make
  end
end

Main.new
