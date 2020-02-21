describe 'examples of rspec' do
    
    it 'sum two numbers' do
        sum = 10 + 5

        expect(sum).to eql(15)
    end

    it 'multiply two numbers' do
        multiply = 10 * 5

        expect(multiply).to eql(50)
    end
end