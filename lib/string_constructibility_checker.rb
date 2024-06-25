# frozen_string_literal: true

class StringConstructibilityChecker
  def initialize(s, dictionary)
    @s = s
    @dictionary = dictionary
  end

  def can_construct?
    raise NotImplementedError, "Подклассы должны реализовать метод 'can_construct?'"
  end
end
