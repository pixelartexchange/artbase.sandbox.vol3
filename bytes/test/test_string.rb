# encoding: utf-8

###
#  to run use
#     ruby -I ./lib -I ./test test/test_string.rb


require 'helper'


class TestString < MiniTest::Test

  def test_string
     ####
     # note:  1) String.new gets you String with "binary" encoding
     #        2) String Literal "" and String.new("")
     #              gets you String with default encoding (utf-8)

     assert Encoding::ASCII_8BIT == String.new.encoding
     assert Encoding::ASCII_8BIT == String.new("".b).encoding
     assert Encoding::ASCII_8BIT == "".b.encoding

     assert Encoding::BINARY == Encoding::ASCII_8BIT
     assert Encoding::BINARY == String.new.encoding
     assert Encoding::BINARY == String.new("".b).encoding
     assert Encoding::BINARY == "".b.encoding

     assert Encoding::UTF_8 == "".encoding
     assert Encoding::UTF_8 == String.new("").encoding
  end

end  # class TestString
