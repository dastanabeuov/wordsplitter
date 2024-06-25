require 'spec_helper'

RSpec.describe DynamicProgrammingChecker do
  describe "#can_construct?" do
    it "возвращает true, если строку можно представить с помощью слов из словаря" do
      checker = DynamicProgrammingChecker.new("яблокопирог", ["яблоко", "пирог", "яблокопирог"])
      expect(checker.can_construct?).to eq(true)
    end

    it "возвращает false, если строку нельзя представить с помощью слов из словаря" do
      checker = DynamicProgrammingChecker.new("кошсобака", ["кошки", "собака", "и", "кот"])
      expect(checker.can_construct?).to eq(false)
    end

    it "возвращает true для пустой строки" do
      checker = DynamicProgrammingChecker.new("", ["яблоко", "пирог"])
      expect(checker.can_construct?).to eq(true)
    end
  end
end
