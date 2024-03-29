require_relative '../../app/bank'

describe ContaPoupanca do

  describe 'Saque' do
    context 'quando o valor é positivo' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saca(200.00)
      end

      it 'então atualiza saldo' do
        expect(@cp.saldo).to eql 799.00
      end
    end

    context 'quando o saldo é zero' do
      before(:all) do
        @cp = ContaPoupanca.new(0.00)
        @cp.saca(100.00)
      end

      it 'então exibe a mensagem' do
        expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it('e o saldo final com zeros') do
        expect(@cp.saldo).to eql 0.00
      end
    end

    context 'quando o saldo é insuficiente' do
      before(:all) do
        @cp = ContaPoupanca.new(500.00)
        @cp.saca(501.00)
      end

      it 'então exibe a mensagem' do
        expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
      end

      it('e o saldo permanece') do
        expect(@cp.saldo).to eql 500.00
      end
    end

    context 'quando supera o limite de saque' do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saca(701.00)
      end

      it 'então exibe a mensagem' do
        expect(@cp.mensagem).to eql 'Limite maxima por saque é de R$ 500'
      end

      it('e o saldo permanece') do
        expect(@cp.saldo).to eql 1000.00
      end
    end

  end # describe saque
end # describe ContaPoupanca
