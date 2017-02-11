require 'pry'

class Bob

  def self.hey(remark)
    remark.strip!

    if remark.empty?
      'Fine. Be that way!'
    elsif is_shouting?(remark)
      'Whoa, chill out!'
    elsif is_question?(remark)
      'Sure.'
    else
      'Whatever.'
    end
  end

  def self.is_shouting?(remark)
    characters = remark.split("")
    letters_capitalized = characters.all? { |c| is_letter_capital?(c) }
    has_letters?(characters) && letters_capitalized
  end

  def self.is_letter_capital?(c)
    return uppercase?(c) if letter?(c)
    true
  end

  def self.letter?(char)
    char =~ /[[:alpha:]]/
  end

  def self.uppercase?(char)
    char == char.upcase
  end

  def self.has_letters?(chars)
    chars.any? { |c| letter?(c) }
  end

  def self.is_question?(remark)
    remark[-1] == ('?')
  end
end
