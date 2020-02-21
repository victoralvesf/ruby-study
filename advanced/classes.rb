class Account
    attr_accessor :balance, :name

    def initialize(id, name)
        self.name = name
        getBalance(id)
    end

    def getBalance(id)
        if id == 1
            self.balance = 3.0
        else
            self.balance = 0.0
        end
    end

    def depositValue(value)
        self.balance += value
        puts "Depositando a quantia de R$#{value} na conta."
        puts "Novo saldo na conta de #{name} é R$#{balance}."
    end
end

customerAccount = Account.new(1, 'Victor')
customerAccount.depositValue(18.90)