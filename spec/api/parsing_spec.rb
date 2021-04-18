require 'spec_helper'
require_relative '../../parsing.rb'

describe Parse do
    describe '#extension' do
        context 'when reading a file' do
            it 'returns file extension and check if its .json' do
                result = subject.fileExtension
                expect(result).to eq ('.json')
            end
        end
    end
end