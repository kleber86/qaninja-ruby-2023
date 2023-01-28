class ContaCorrente
  attr_accessor :saldo, :mensagem

  def initialize(saldo)
    @saldo = saldo
  end

  def saca(valor)
    if(valor > saldo)
      @mensagem = 'Saldo insuficiente para saque :('
    elsif (valor > 700.00)
      @mensagem = 'Limite maxima por saque é de R$ 700'
    else
      @saldo -= valor
    end
  end
end
