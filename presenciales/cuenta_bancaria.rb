class CuentaBancaria
    attr_accessor :user_name
    def initialize(user_name, acount_number, vip=0)
        raise RangeError, "Numero de digitos de cuenta distinto de 8" if acount_number.to_s.split("").count != 8 
    
        @user_name = user_name
        acount_number = acount_number
        @vip = vip
    end
    
    def acount_number
        "#{@vip}-#{@acount_number}"
    end
end

acount = CuentaBancaria.new('Anita', '12345678', 1)
puts acount.numero_de_cuenta