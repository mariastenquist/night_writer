require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_writer'

class NightWriterTest < Minitest::Test
  def test_does_it_output_my_message
    braille = ToBraille.new("hello world")
    assert_equal "hello world", braille.input_text
  end

  def test_does_it_break_up_into_characters
    braille = ToBraille.new("hello world")
    assert_equal ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"], braille.split
  end

  def test_does_it_assign_all_braille_letters
    skip
    braille = ToBraille.new("hello")
    assert_equal [["0.","00",".."], ["0.",".0",".."], ["0.","0.","0."], ["0.","0.","0."], ["0.",".0","0."]], braille.translate
  end

  def test_the_top_line_is_correct
    skip
    braille = ToBraille.new("hello")
    assert_equal ["0.", "0.", "0.", "0.", "0."], braille.translate
  end

  def test_the_mid_line_is_correct
    skip
    braille = ToBraille.new("hello")
    assert_equal ["00", ".0", "0.", "0.", ".0"], braille.translate
  end

  def test_does_the_output_appear_on_one_line
    braille = ToBraille.new("hello")
    assert_equal "0.0.0.0.0.00.00.0..0....0.0.0.", braille.translate
  end
end
