# encoding: utf-8

class Integer
    def factorial
        f = 1 
        
        for i in 1..self
            f *= i 
        end 
        
        f
    end
end

def get_int_values(n)
	n.times.map.with_index { |n|
		print "Ingresa #{1 + n}° valor: "
		gets.chomp.to_i
	}
end

def factorial(n)
    n.factorial
end

while true do
    puts '¿Qué quieres hacer: [sumar], [restar], [multiplicar], [factorial] o [salir]'

    operation = gets.chomp
    
    operation.downcase!

    case operation
    when 'sumar'
	    operator = :+
    when 'restar'
	    operator = :-
    when 'multiplicar'
	    operator = :*
    when 'factorial'
        operator = :!
    when 'salir'
        break
    else
        puts 'Ingrese una operación correcta'
    end

    if %w(sumar restar multiplicar).include? operation
        puts '¿Cuántos valores?'

        num_of_values = gets.to_i    

	    puts "¿Qué números quiere #{operation}?"

        answer = get_int_values(num_of_values).inject(operator)

        puts "La respuesta es ... #{answer}"
    else
        puts "Ingrese el número"
        
        n = gets.chomp.to_i
        
        answer = factorial(n)
        
        puts "La respuesta es ... #{answer}"
    end
end

	
