# frozen_string_literal: true

# https://exercism.org/tracks/ruby/exercises/rna-transcription
# Complement class
#
class Complement
  def self.of_dna(sequence)
    # Transcription table values
    # DNA -> RNA
    # G -> C
    # C -> G
    # T -> A
    # A -> U
    dna_to_rna = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }.freeze

    return '' if sequence.strip.empty?

    sequence.upcase.chars.map do |char|
      dna_to_rna[char]
    end.join
  end
end
