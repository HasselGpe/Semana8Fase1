# # Examen Fase 1

# # Clases
# # Crear una clase CreditCard que tenga como datos la información que aparece en la tabla de ejemplo. 
# # Posteriormente crea un arreglo con cinco objetos de tarjetas de crédito e imprime la información de 
# # cada tarjeta en una tabla. Utiliza las pruebas y la tabla que se presenta de ejemplo.

# #Clase CreditCard
# ...


# #Cinco instancias de CreditCard
# ...

# #Array con cinco objetos de tarjetas de crédito
# ...


# #tests 

# cards.each do |card|
#    puts "#{card.name} responds to:"
#    puts "\tName: #{card.respond_to?(:name) == true}"
#    puts "\tNumber: #{card.respond_to?(:number) == true}"
#    puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
#    puts "\tcvc: #{card.respond_to?(:cvc) == true}"
#    puts "\tGet status: #{card.respond_to?(:status) == true}"
#    puts "\tSet status: #{card.respond_to?(:status=) == true}"
#    puts "\n\n"
# end

# #método para mostrar datos de tarjetas
# ...
# Tabla con datos de tarjetas

# |     name     |     number     |    expiration  |      cvc      |           status          |
# ----------------------------------------------------------------------------------------------
# |   Amex       |    2345673444  |      12/15     |      2345     | [234, 567, 456, 567, 344] |  
# |   ScotiaBank |    2345673744  |      12/16     |      2845     | [234, 345, 456, 567, 344] |  
# |   Bancomer   |    2345673444  |      12/15     |      2645     | [234, 345, 456, 567, 344] |  
# |   Serfin     |    2345473454  |      12/20     |      1345     | [234, 345, 456, 567, 344] |  
# |   BanCoppel  |    2345373464  |      12/18     |      2445     | [567, 345, 456, 567, 344] |   
# Herencia
# Crea las clases Athlete, Runner, Swimmer y Cyclist, trata de relacionarlas a través de herencia. Cada atleta podrá incrementar el total de la distancia recorrida y el tiempo total de ejercicio. Al final cada tipo de atleta deberá mostrar la distancia total recorrida, el tiempo total y la velocidad obtenida. Es importante considerar los casos cuando la distancia recorrida es igual a 0 y mayor que 0. Todas las pruebas deberán pasar.

# #Athlete class
# class Athlete

#   #método para validar tiempo
#   ...

#   #método para hacer ejercicio
#   ...

#   #método para obtener velocidad del atleta
#   ...

# end

# #Runner class
# ...

# #Swimmer class
# ...

# #Cyclist class
# ...


# #tests

# #instancias de atletas con distancia en metros
# runner = Runner.new()
# swimmer = Swimmer.new(50, 10)
# cyclist = Cyclist.new(70, 27)

# athletes = [runner, swimmer, cyclist]

# athletes.each do |athlete|
#   #¿qué tipo de atleta es?
#   puts "#{athlete.class} responds to:"
#   puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
#   puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
#   puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
#   puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
#   puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
#   puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
#   puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
#   puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
#   puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
#   puts "\n\n"
# end

# #test for runner

# #test para runner con distancia = 0
# p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
# #test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
# runner.new_workout(20, 7) 
# #test para runner con distancia = 20 metros y tiempo = 7 segundos
# p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

# #test para swimmer con distancia = 50
# p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"
# Race cars
# En una pista de carrera se realizan ciertas pruebas de velocidad a diferentes race cars. Se necesita medir para cada carro la velocidad promedio de acuerdo a cinco laptimes registrados. El lapdistance de la pista es de 100 metros. Esta distancia es importante que la consideres constante en el programa.

# Es necesario crear una clase RaceCar que contemple el nombre del carro y los tiempos de cada lap que ha registrado. Hay que considerar un método que retorne la velocidad promedio de cada carro, otro método que muestre el nivel de cada carro dependiendo de su velocidad (Principiante, Normal, Medio, Avanzado). Posteriormente, crear una clase Team que permita formar equipos de carros. Por último, crear un método que permita buscar si existe un determinado carro en un equipo. Todas las pruebas deben pasar.

# Extra - Crea un metodo en team que regrese el promedio de velocidad del equipo.

# Extra - Genera una tabla que muestre el coche y su nivel.

# #RaceCar class
# class RaceCar


#   #método para obtener velocidad promedio
#   ...

#   #método que muestra nivel de cada race car
#   ...

# end

# #Team class
# class Team 


#   #método para agregar nuevo race car
#   ...

#   #método para calcular promedio de velocidad del equipo
#   ...

# end

# #método para buscar race car
# ...

# #método para generar la tabla
# ...

# #método para mostrar nombre y nivel del race car
# ...


# #instancias de RaceCar
# ...


# #tests

# p "car1: #{car1.average_speed} m/s"
# #ej. car1: 9.5 m/s
# p "car2: #{car2.average_speed} m/s"
# #ej. car2: 12.01 m/s
# p "car3: #{car3.average_speed} m/s"
# #ej. car3: 10.65 m/s
# p "car4: #{car4.average_speed} m/s"
# #ej. car4: 11.0 m/s
# p "car5: #{car5.average_speed} m/s"
# #ej. car5: 10.15 m/s
# p "car6: #{car6.average_speed} m/s"
# #ej. car6: 15.51 m/s

# #create a team of cars 
# team1 = [car1, car2, car3, car4, car5]
# team_one = Team.new(team1)

# #test para buscar race car en equipo team_one
# p search("Power", team_one) == "Power is a racer"

# #calculate average speed of team
# p team_one.average_speed_of_team
# #ej. 10.66 

# #método para mostrar nombre y nivel del race car
# ...
# Ejemplo de tabla que muestra nombre y nivel del race car

# |    Name        |    Nivel        |
# ------------------------------------
# |   Force        |   Principiante  |
# |   Power        |   Medio         |
# |   Passwater    |   Normal        |
# |   Banjo        |   Normal        |
# |   Duck         |   Normal        |
##########################################################################################################################################################################
# Examen Fase 1

# Clases
# Crear una clase CreditCard que tenga como datos la información que aparece en la tabla de ejemplo. 
# Posteriormente crea un arreglo con cinco objetos de tarjetas de crédito e imprime la información de 
# cada tarjeta en una tabla. Utiliza las pruebas y la tabla que se presenta de ejemplo.

#Clase CreditCard


# Cinco instancias de CreditCard


# Array con cinco objetos de tarjetas de crédito



#tests 

cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

#método para mostrar datos de tarjetas
# ...
# Tabla con datos de tarjetas

|     name     |     number     |    expiration  |      cvc      |           status          |
----------------------------------------------------------------------------------------------
|   Amex       |    2345673444  |      12/15     |      2345     | [234, 567, 456, 567, 344] |  
|   ScotiaBank |    2345673744  |      12/16     |      2845     | [234, 345, 456, 567, 344] |  
|   Bancomer   |    2345673444  |      12/15     |      2645     | [234, 345, 456, 567, 344] |  
|   Serfin     |    2345473454  |      12/20     |      1345     | [234, 345, 456, 567, 344] |  
|   BanCoppel  |    2345373464  |      12/18     |      2445     | [567, 345, 456, 567, 344] |   
# Herencia
# Crea las clases Athlete, Runner, Swimmer y Cyclist, trata de relacionarlas a través de herencia. 
# Cada atleta podrá incrementar el total de la distancia recorrida y el tiempo total de ejercicio. 
# Al final cada tipo de atleta deberá mostrar la distancia total recorrida, el tiempo total y la 
# velocidad obtenida. Es importante considerar los casos cuando la distancia recorrida es igual a 0 y
#  mayor que 0. Todas las pruebas deberán pasar.

#Athlete class
class Athlete

  #método para validar tiempo
  

  #método para hacer ejercicio
 
  #método para obtener velocidad del atleta
 

end

#Runner class


#Swimmer class


#Cyclist class



#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"

# Race cars

# En una pista de carrera se realizan ciertas pruebas de velocidad a diferentes race cars. 
# Se necesita medir para cada carro la velocidad promedio de acuerdo a cinco laptimes registrados.
#  El lapdistance de la pista es de 100 metros. Esta distancia es importante que la consideres constante 
#  en el programa.

# Es necesario crear una clase RaceCar que contemple el nombre del carro y los tiempos de cada lap que 
# ha registrado. Hay que considerar un método que retorne la velocidad promedio de cada carro, otro método 
# que muestre el nivel de cada carro dependiendo de su velocidad (Principiante, Normal, Medio, Avanzado). 
# Posteriormente, crear una clase Team que permita formar equipos de carros. Por último, crear un método 
# que permita buscar si existe un determinado carro en un equipo. Todas las pruebas deben pasar.

# Extra - Crea un metodo en team que regrese el promedio de velocidad del equipo.

# Extra - Genera una tabla que muestre el coche y su nivel.

#RaceCar class
class RaceCar


  #método para obtener velocidad promedio
 

  #método que muestra nivel de cada race car
 

end

#Team class
class Team 


  #método para agregar nuevo race car


  #método para calcular promedio de velocidad del equipo


end

#método para buscar race car


#método para generar la tabla


#método para mostrar nombre y nivel del race car



#instancias de RaceCar



#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)

#test para buscar race car en equipo team_one
p search("Power", team_one) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team
#ej. 10.66 

#método para mostrar nombre y nivel del race car

# Ejemplo de tabla que muestra nombre y nivel del race car

# |    Name        |    Nivel        |
# ------------------------------------
# |   Force        |   Principiante  |
# |   Power        |   Medio         |
# |   Passwater    |   Normal        |
# |   Banjo        |   Normal        |
# |   Duck         |   Normal        |