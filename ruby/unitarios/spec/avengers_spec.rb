class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []  #torna a variável um array
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

describe AvengersHeadQuarter do
  it "deve adicionar um vingador" do # cenário 1
    hq = AvengersHeadQuarter.new

    hq.put("Spiderman")
    expect(hq.list).to include "Spiderman"  #valida se há "Spiderman" no array
  end

  it "deve adicionar uma lista de vingadores" do # cenário 2
    hq = AvengersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    res = hq.list.size > 0

    expect(hq.list.size).to be > 0
    expect(res).to be true
  end

  it "thor deve ser o primeiro da lista" do # cenário 3
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    expect(hq.list).to start_with("Thor")
  end

  it "Ironman deve ser o último da lista" do # cenário 4
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")
    hq.put("Ironman")

    expect(hq.list).to end_with("Ironman")
  end

  it "deve conter o sobrenome" do
    avenger = "Peter Parker"

    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match(/Papito/)
  end
end
