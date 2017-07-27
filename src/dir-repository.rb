# coding: utf-8
require "fileutils"
# coding: utf-8
class DirRepository
  # 仕様を見てコードを追加
  attr_reader :dir_name, :header, :num

  # 仕様を見てコードを追加
  def initialize(dir_name, header, num)
    @dir_name = dir_name
    @header = header
    @num = num
  end

  # メソッドの中身のコードを追加
  def make
    FileUtils.mkdir_p(create_directories , :mode => 705)
  end

  def create_directories
    arr = (1..@num)
    arr.map{|x| x = dir_name + "/" + @header + "%02d" % x.to_s}
  end
end

# dir = DirRepository.new("RbTest" , "rb" , 10).make
