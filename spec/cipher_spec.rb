require 'spec_helper'
require_relative '../lib/cipher'

RSpec.describe 'Cipher assignment' do
    
    describe 'Output modified string based on shift factor' do
        it 'returns Bmfy f xywnsl!' do
            expected_output = "Bmfy f xywnsl!"
            expect(caesar_cipher('What a string!', 5)).to eq(expected_output)
        end
    end


    describe 'Wraps text if shifted letter bigger than z' do
        it 'returns cDe' do
            expected_output = "cDe"
            expect(caesar_cipher('xYz', 5)).to eq(expected_output)
        end
    end

end