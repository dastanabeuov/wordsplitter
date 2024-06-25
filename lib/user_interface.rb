# frozen_string_literal: true

require_relative 'dynamic_programming_checker'

class UserInterface
  def initialize
    @checker = nil
  end

  def run
    input_string
    input_dictionary
    perform_check
    show_result
  end

  private

  def input_string
    puts 'Введите строку s:'
    @s = gets.chomp
  end

  def input_dictionary
    puts 'Введите слова словаря (через пробел):'
    @dictionary = gets.chomp.split
  end

  def perform_check
    @checker = DynamicProgrammingChecker.new(@s, @dictionary)
  end

  def show_result
    result = @checker.can_construct?
    if result
      puts "Можно представить строку '#{@s}' в виде последовательности слов из словаря."
    else
      puts "Нельзя представить строку '#{@s}' в виде последовательности слов из словаря."
    end
  end
end
