# frozen_string_literal: true

require_relative 'string_constructibility_checker'

class DynamicProgrammingChecker < StringConstructibilityChecker
  def can_construct?
    return true if @s.empty?

    n = @s.length
    dp = Array.new(n + 1, false)
    dp[0] = true

    (1..n).each do |end_index|
      (0..end_index - 1).each do |start_index|
        if dp[start_index] && @dictionary.include?(@s[start_index...end_index].downcase)
          dp[end_index] = true
          break
        end
      end
    end

    dp[n]
  end
end
