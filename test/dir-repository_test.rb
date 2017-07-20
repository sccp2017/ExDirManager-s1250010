# coding: utf-8
require 'test/unit'
require_relative '../src/dir-repository'
# コードを追加

class DirRepositoryTest < Test::Unit::TestCase
  def test_constructor
    # コードを追加
    dir_generator = DirRepository.new("RbTest", "rb", )
    assert_equal "RbTest", dir_generator.dir_name
    assert_equal "rb", dir_generator.header
  end

  def test_create_directories
    dir_generator = DirRepository.new("RbTest", "rb", 3)
    assert_equal dir_generator.create_directories , ["rb01" , "rb02" , "rb03"]
end
