require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/reverse_words'

describe "String reverse" do
  it "Must reverse a full string" do
    # Arrange
    input = "Hello"
    expected = "olleH"

    # Act
    output = string_reverse(input, 0, input.length)

    # Assert
    output.must_equal expected
  end

  it "Must reverse an arbitrary substring" do
    # Arrange
    input = "Hello there!"
    expected = "Holle there!"

    # Act
    output = string_reverse(input, 1, 5)

    # Assert
    output.must_equal expected
  end

  it "Must noop if one character is specified" do
    # Arrange
    input = "Hello there!"
    expected = "Hello there!"

    # Act
    output = string_reverse(input, 1, 2)

    # Assert
    output.must_equal expected
  end

  it "Must noop if no character is specified" do
    # Arrange
    input = "Hello there!"
    expected = "Hello there!"

    # Act
    output = string_reverse(input, 1, 1)

    # Assert
    output.must_equal expected
  end
end

describe "reverse words" do
  describe "basic tests" do
    it "reverse each word in a sentence with one word" do
      
      test_string = "Engineer"

      reverse_words(test_string)

      test_string.must_equal "reenignE"
    end

    it "reverse each word in a sentence with two words" do
      test_string = "hello, world"

      reverse_words(test_string)

      test_string.must_equal ",olleh dlrow"
    end
  end

  # check for edge cases
  describe "edge cases" do
    # if it's a string parameter, check for empty
    it "reverse each word in an empty sentence" do
      test_string = ""

      reverse_words(test_string)

      test_string.must_be_empty
    end

    # if the parameter is an object, check for nil
    it "nil object passed to reverse words" do
      test_string = nil

      reverse_words(test_string)

      test_string.must_be_nil
    end

    it "reverse each single character word in a sentence with multiple words" do
      test_string = "a b c d e f g h ? 1 2 4"

      reverse_words(test_string)

      test_string.must_equal "a b c d e f g h ? 1 2 4"
    end

    it "reverse each word in a sentence with multiple words of varying lengths" do
      test_string = "I strive to engineer the most efficient solutions."

      reverse_words(test_string)

      test_string.must_equal "I evirts ot reenigne eht tsom tneiciffe .snoitulos"
    end

    it "reverse words in a sentence with preceeding and trailing white spaces" do
      test_string = "   evol  "

      reverse_words(test_string)

      test_string.must_equal "   love  "
    end
  end
end
