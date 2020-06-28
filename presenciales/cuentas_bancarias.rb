class Usuario 
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo_total
        @cuentas.map{ |cuenta| cuenta.saldo }.sum
    end
end

class CuentaBancaria 
    attr_accessor :saldo
    def initialize(banco, num_cuenta, saldo = 0)
        @banco = banco
        @num_cuenta = num_cuenta
        @saldo = saldo
    end
    
    def transferir(monto, otra_cuenta)
        @saldo -= monto
        otra_cuenta.saldo += monto
    end
end

cuenta_uno = CuentaBancaria.new("Bank One", "111", 5000)
cuenta_dos = CuentaBancaria.new("Bank Two", "222", 5000)

cuenta_uno.transferir(2000, cuenta_dos)

pp cuenta_uno
pp cuenta_dos

usuario = Usuario.new('Anita', [cuenta_uno, cuenta_dos])

puts usuario.saldo_total