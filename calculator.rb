# encoding: utf-8

def get_int_values(n)
	n.times.map.with_index { |n|
		print "Ingresa #{1 + n}° valor: "
		gets.chomp.to_i
	}
end

puts '¿Qué quieres hacer: [sumar], [restar] o [multiplicar]'

operation = gets.chomp

puts '¿Cuántos valores?'

num_of_values = gets.to_i

case operation.downcase
when 'sumar'
	puts '¿Qué números quiere sumar?'
	operator = :+
when 'restar'
	puts '¿Qué números quiere restar?'
	operator = :-
when 'multiplicar'
	puts '¿Qué números quiere multiplicar'
	operator = :*
end

answer = get_int_values(num_of_values).inject(operator)

puts "La respuesta es ... #{answer}"

	