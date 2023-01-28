class Conta
  attr_accessor :saldo, :mensagem

  def initialize(saldo)
    @saldo = saldo
  end

  def saca(valor, max, taxa)
    if(valor > saldo)
      @mensagem = 'Saldo insuficiente para saque :('
    elsif (valor > max)
      @mensagem = 'Limite maxima por saque é de R$ ' + max.to_s
    else
      @saldo -= valor + taxa
    end
  end

end

class ContaCorrente < Conta

  def saca(valor, max = 700, taxa = 2.00)
    super
  end
end

class ContaPoupanca < Conta

  def saca(valor, max = 500, taxa = 1.00)
    super
  end
end
