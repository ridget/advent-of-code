# frozen_string_literal: true

require 'puzzle_input'

RSpec.describe PuzzleInput do
  context 'with a valid file' do
    let(:filename) { File.join(__dir__, 'fixtures', 'input.txt') }
    let(:expected) do
      %w(
        eight9fhstbssrplmdlncmmqqnklb39ninejz
        three656
        ppjvndvknbtpfsncplmhhrlh5
        7fjqhrhsevenlbtwoninevnmct2
        qjnbpfrztwo1
        plggqjthree49four
        xpxpbsdc1
        three2six8two5
        36two
        five121zvjks3
      )
    end

    describe '.call' do
      it 'returns the correct structure' do
        expect(described_class.call(filename)).to eq(expected)
      end
    end
  end
end
