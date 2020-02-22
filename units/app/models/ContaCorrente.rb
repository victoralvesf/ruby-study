require_relative './Conta'

class ContaCorrente < Conta
    def saque(value, max = 700, taxa = 5.00)
        super
    end
end