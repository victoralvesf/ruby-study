class AvengersHeadQuarter

    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

describe AvengersHeadQuarter do

    it 'should add an avenger' do
        hq = AvengersHeadQuarter.new
        hq.put('Iron Man')

        expect(hq.list).to include 'Iron Man'
    end

    it 'should add a list of avengers' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Captain America')

        result = hq.list.size == 3

        expect(result).to be true
    end

    it 'Thor should be the first in list and Captain America the last' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Captain America')

        expect(hq.list).to start_with 'Thor'
        expect(hq.list).to end_with 'Captain America'
    end

end