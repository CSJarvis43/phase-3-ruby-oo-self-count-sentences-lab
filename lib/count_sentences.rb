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
    punct_count = self.split(/\.|!|\?/)
    punct_count.filter { |sentence| !sentence.empty? }.size
  end
end