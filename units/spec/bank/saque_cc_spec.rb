require_relative '../../app/models/ContaCorrente'

describe ContaCorrente do
  
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @contaCorrente = ContaCorrente.new(1000.00)
                @contaCorrente.saque(200.00)
            end

            it 'entao atualiza o saldo' do
                expect(@contaCorrente.saldo).to eql(795.00)
            end
        end

        context 'quando o saldo e zero' do
            before(:all) do
                @contaCorrente = ContaCorrente.new(0.0)
                @contaCorrente.saque(100.00)
            end

            it 'entao exibe a mensagem' do
                expect(@contaCorrente.mensagem).to eql('Saldo insuficiente para saque :(')
            end

            it 'e o saldo permance em zero' do
                expect(@contaCorrente.saldo).to eql(0.0)
            end
            
        end

        context 'quando nao possui saldo suficiente' do
            before(:all) do
                @contaCorrente = ContaCorrente.new(500.00)
                @contaCorrente.saque(501.00)
            end

            it 'entao exibe a mensagem' do
                expect(@contaCorrente.mensagem).to eql('Saldo insuficiente para saque :(')
            end

            it 'e o saldo permance o mesmo' do
                expect(@contaCorrente.saldo).to eql(500.0)
            end
        end

        context 'quando supera o limite de saque' do
            before(:all) do
                @contaCorrente = ContaCorrente.new(1000.00)
                @contaCorrente.saque(701.00)
            end

            it 'entao exibe a mensagem' do
                expect(@contaCorrente.mensagem).to eql('Limite máximo por saque é de R$ 700')
            end
            
            it 'e o saldo permance o mesmo' do
                expect(@contaCorrente.saldo).to eql(1000.00)
            end
        end
    end

end