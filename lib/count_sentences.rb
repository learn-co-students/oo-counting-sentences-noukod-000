require 'pry'

class String
  # attr_accessor :string
  #
  #     def initialize(string)
  #       @string= string
  #     end
  def sentence?
    if self.end_with? (".")
      true
   else
      false
   end
  end

  def question?
    if self.end_with? ("?")
      true
   else
      false
   end
  end

  def exclamation?
    if self.end_with? ("!")
      true
   else
      false
   end

  end

  def count_sentences

    sep_sent = self.split(/[.!]/)
       sep_sent.any? do |sentence|
        sentence.end_with?"!!"
          sentence << "!"


        end
          return sep_sent.count

    # self.split(/[])
    # return self.split(/[.?!]/).count
  end
end
