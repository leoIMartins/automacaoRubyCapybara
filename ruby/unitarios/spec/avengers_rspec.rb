class AvengersHeadQuarter

describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expected(hq).to eql 'Spiderman'
    end
end