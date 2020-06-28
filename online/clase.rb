#############EJERCICIO1################

=begin class Persona
    def saludar
        puts "hola"
    end
end

persona1 = Persona.new

persona1.saludar 
=end

#############EJERCICIO2################

=begin class Empresa
    def nombre   
        @nombre
    end
    def direccion
        @direccion
    end
    def direccion=(direccion)
        @direccion = direccion
    end
end

class Empresa
    attr_reader :nombre
    attr_accessor :direccion
end 
=end

#############EJERCICIO3################

=begin class Vehiculo
    def encender
        @encendido = :on
    end
    def estado
        @direccion
    end
end

v = Vehiculo.new 
v.encender
puts v.estado.class 
=end

#############EJERCICIO4################

=begin class Mascota
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

primera_mascota = Mascota.new('Spike')
puts primera_mascota.nombre 
=end

#############EJERCICIO5################

=begin class Producto
    def initialize(name, stock = 0)
        @name = name
        @stock = stock
    end
end 
=end

#############EJERCICIO6################

=begin class Punto
    attr_reader :x, :y
    def initialize(x,y)
        @x = x
        @y = y
    end

    def avanzar
        @x += 1
    end
end 
=end

#############EJERCICIO7################

=begin class Persona
    attr_accessor :nombre, :mascota
end

class Mascota
    attr_accessor :nombre
end 
=end

#############EJERCICIO8################

=begin class Persona
    attr_accessor :nombre, :edad, :redes_sociales
    def initialize(nombre, edad, redes_sociales)
        @nombre = nombre
        @edad = edad
        @redes_sociales = redes_sociales
    end
end

class RedSocial
    attr_accessor :tipo, :nombre_usuario
    def initialize(tipo, nombre_usuario)
        @tipo = tipo
        @nombre_usuario = nombre_usuario
    end
end

rs1 = RedSocial.new(:facebook, 'lola123')
rs2 = RedSocial.new(:twitter, '@lola123')
p1 = Persona.new('Fernando', 29, [rs1, rs2])

puts p1.redes_sociales
=end

 #############EJERCICIO9################

=begin  class Recta
    def initialize(a,b)
        @a = a
        @b = b
    end
 end 
=end

#############EJERCICIO10################

=begin class Persona
    def initialize(nombre, caminado = 0)
        @nombre = nombre
        @caminado = caminado
    end
    def caminar(km = 1)
        #aqui se modifica @caminando
        #por lo que el metodo es mutable
        @caminado += km
    end
    def caminado
        @caminado
    end
end

p1 = Persona.new('Javiera')
p2 = p1
p1.caminar(10)
puts p2.caminado 
=end

#############EJERCICIO11################

=begin class Canasta
    #atributos con getter y setter para poder setearlos despues
    attr_accessor :frutas, :velas, :tarjetas
    #metodo donde se declaran las instancias (este es el getter)
    def initialize(frutas, velas, tarjetas)
        @frutas = frutas
        @velas = velas
        @tarjetas = tarjetas
    end
    #metodo donde se settean las instancias (este es el setter)
    def +(otra_canasta)
        Canasta.new(@frutas + otra_canasta.frutas,
                    @velas + otra_canasta.velas,
                    @tarjetas + otra_canasta.tarjetas)
    end
    # aca se suman los elementos
    def cantidad_de_elementos
        @frutas+@velas+@tarjetas
    end
end
# aca se les pasan los argumentos a la clase
c1 = Canasta.new(2,1,3)
c2 = Canasta.new(5,2,3)
# aca se suman todas
fusion_canastas = c1+c2
puts fusion_canastas.cantidad_de_elementos 
=end

#############EJERCICIO12################

class Persona
    attr_accessor :nombre, :mascota
    def initialize(nombre,mascota = nil)
        raise ArgumentError, "Argument mascota is of type #{mascota.class} but not Mascota" 
        if mascota.class != nil || mascota.class != Mascota
            @nombre = nombre
            @mascota = nil
    end
end

p1 = Persona.new('Fry','Nibler') #argument mascota is or type String but nor Mascota