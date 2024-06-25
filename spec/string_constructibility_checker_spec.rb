require 'spec_helper'

RSpec.describe StringConstructibilityChecker do
  describe "#can_construct?" do
    it "вызывает исключение NotImplementedError" do
      checker = StringConstructibilityChecker.new("пример", ["пример"])
      expect { checker.can_construct? }.to raise_error(NotImplementedError, "Подклассы должны реализовать метод 'can_construct?'")
    end
  end
end
