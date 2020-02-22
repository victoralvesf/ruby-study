require_relative './Conta'

class ContaPoupanca < Conta
    def saque(value, max = 500, taxa = 2.00)
        super
    end
end