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

  it 'deve adicionar um vingador' do
    hq = AvengersHeadQuarter.new

    hq.put('Spiderman')
    expect(hq.list).to eql ['Spiderman']
    expect(hq.list).to include 'Spiderman'
  end

  it 'deve adicionar uma lista de vingadores' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    res = hq.list.size > 0

    expect(hq.list).to include 'Thor'
    # expect(hq.list.size).to be > 0
    expect(res).to be true
    expect(hq.class).to eql AvengersHeadQuarter
  end

  it 'thor deve ser o primeiro da lista' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    expect(hq.list).to start_with('Thor')
  end

  it 'spiderman deve ser o ultimo da lista' do
    hq = AvengersHeadQuarter.new
    hq.put('Thor')
    hq.put('Hulk')
    hq.put('Spiderman')

    expect(hq.list).to end_with('Spiderman')
  end

  it 'deve conter o sobrenome' do
    avenger = 'Peter Paker'
    expect(avenger).to match(/Paker/)
    expect(avenger).not_to match('Alves')
  end
end
