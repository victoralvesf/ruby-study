class Conta
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
    end

    def saque(valor, max, taxa)
        if valor > max
            self.mensagem = 'Limite máximo por saque é de R$ ' + max.to_s
        elsif valor > self.saldo
            self.mensagem = 'Saldo insuficiente para saque :('
        else
            self.saldo -= valor + taxa
        end
    end
end