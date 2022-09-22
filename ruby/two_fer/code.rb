# frozen_string_literal: true

# https://exercism.org/tracks/ruby/exercises/two-fer
# TwoFer class
#
class TwoFer
  def self.two_fer(name = nil)
    return "One for #{name}, one for me." unless name.nil?

    'One for you, one for me.'
  end
end
