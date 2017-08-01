class Command_parser

  def initialize(arr)
    @argv = arr
  end

  def parse
    hash = Hash[*@argv]
    Command.new(hash["generate"] , hash["-h"] , hash["-m"])
  end
  
end
