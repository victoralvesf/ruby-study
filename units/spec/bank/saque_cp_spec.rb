require_relative '../../app/models/ContaPoupanca'

describe ContaPoupanca do
  
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @contaPoupanca = ContaPoupanca.new(1000.00)
                @contaPoupanca.saque(200.00)
            end

            it 'entao atualiza o saldo' do
                expect(@contaPoupanca.saldo).to eql(798.00)
            end
        end

        context 'quando o saldo e zero' do
            before(:all) do
                @contaPoupanca = ContaPoupanca.new(0.0)
                @contaPoupanca.saque(100.00)
            end

            it 'entao exibe a mensagem' do
                expect(@contaPoupanca.mensagem).to eql('Saldo insuficiente para saque :(')
            end

            it 'e o saldo permance em zero' do
                expect(@contaPoupanca.saldo).to eql(0.0)
            end
            
        end

        context 'quando nao possui saldo suficiente' do
            before(:all) do
                @contaPoupanca = ContaPoupanca.new(400.00)
                @contaPoupanca.saque(401.00)
            end

            it 'entao exibe a mensagem' do
                expect(@contaPoupanca.mensagem).to eql('Saldo insuficiente para saque :(')
            end

            it 'e o saldo permance o mesmo' do
                expect(@contaPoupanca.saldo).to eql(400.0)
            end
        end

        context 'quando supera o limite de saque' do
            before(:all) do
                @contaPoupanca = ContaPoupanca.new(1000.00)
                @contaPoupanca.saque(501.00)
            end

            it 'entao exibe a mensagem' do
                expect(@contaPoupanca.mensagem).to eql('Limite máximo por saque é de R$ 500')
            end
            
            it 'e o saldo permance o mesmo' do
                expect(@contaPoupanca.saldo).to eql(1000.00)
            end
        end
    end

end