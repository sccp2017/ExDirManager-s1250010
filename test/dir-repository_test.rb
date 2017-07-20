# coding: utf-8
require 'test/unit'
require_relative '../src/dir-repository'
# コードを追加

class DirRepositoryTest < Test::Unit::TestCase
  def test_constructor
    # コードを追加
    dir_generator = DirRepository.new("RbTest", "rb", 5)
    assert_equal "RbTest", dir_generator.dir_name
    assert_equal "rb", dir_generator.header
    assert_equal 5 , dir_generator.num
  end

  def test_create_directories
    dir_generator = DirRepository.new("RbTest", "rb", 3)
    assert_equal dir_generator.create_directories , ["RbTest/rb01" , "RbTest/rb02" , "RbTest/rb03"]
  end
end
