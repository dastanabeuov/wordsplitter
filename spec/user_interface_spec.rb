require 'spec_helper'

RSpec.describe UserInterface do
  describe "#run" do
    it "выводит правильное сообщение для строки, которую можно представить" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("яблокопирог\n", "яблоко пирог\n")
      expect { subject.run }.to output(/Можно представить строку 'яблокопирог' в виде последовательности слов из словаря/).to_stdout
    end

    it "выводит правильное сообщение для строки, которую нельзя представить" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("кошкиисобака\n", "кошки собака\n")
      expect { subject.run }.to output(/Нельзя представить строку 'кошкиисобака' в виде последовательности слов из словаря/).to_stdout
    end

    it "выводит правильное сообщение для пустой строки" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("\n", "\n")
      expect { subject.run }.to output(/Можно представить строку '' в виде последовательности слов из словаря/).to_stdout
    end
  end
end
