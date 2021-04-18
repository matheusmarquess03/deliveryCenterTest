require 'spec_helper'
require_relative '../../api.rb'

describe DeliveryCenter do
    describe '#check_post' do
        context 'needs to send a post request' do    
            it 'checks the answer for 200' do
                result = subject.code
                expect(result).to eq (200)
            end
        end
    end
end