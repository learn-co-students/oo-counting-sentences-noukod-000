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
    element_count = self.split(/[.?!]/)
    element_count.delete_if do |element| 
    element.empty?
    end
    element_count.length
  end
end