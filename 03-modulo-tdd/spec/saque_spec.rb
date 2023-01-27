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

describe ContaCorrente do

  describe 'Saque' do
    context 'quando o valor é positivo' do
      before(:all) do
        @conta = ContaCorrente.new(1000.00)
        @conta.saca(200.00)
      end

      it 'então atualiza saldo' do
        expect(@conta.saldo).to eql 800.00
      end
    end

    context 'quando o saldo é zero' do
      before(:all) do
        @conta = ContaCorrente.new(0.00)
        @conta.saca(100.00)
      end

      it 'vejo a mensagem' do
        expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it('meu saldo permanece com zero') do
        expect(@conta.saldo).to eql 0.00
      end
    end

    context 'quando o saldo é insuficiente' do
      before(:all) do
        @conta = ContaCorrente.new(500.00)
        @conta.saca(501.00)
      end

      it 'vejo a mensagem' do
        expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it('meu saldo permanece conforme o valor inicial') do
        expect(@conta.saldo).to eql 500.00
      end
    end

    context 'quando o valor do saque é maior que o permitido por transação' do
      before(:all) do
        @conta = ContaCorrente.new(1000.00)
        @conta.saca(701.00)
      end

      it 'vejo a mensagem' do
        expect(@conta.mensagem).to eql 'Limite maxima por saque é de R$ 700'
      end

      it('meu saldo permanece conforme o valor inicial') do
        expect(@conta.saldo).to eql 1000.00
      end
    end

  end # describe saque
end # describe ContaCorrente
