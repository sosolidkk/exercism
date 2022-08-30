# frozen_string_literal: true

# LogLineParser class
#
class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    line.split(':').last.strip
  end

  def log_level
    line.split('[').last.split(']').first.strip.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end

  attr_reader :line
end
