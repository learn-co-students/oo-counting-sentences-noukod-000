require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    mySentence = self.split(/[.!?]/)
    mySentence.delete_if{ |space| space.empty? }
    mySentence.length
  end
end