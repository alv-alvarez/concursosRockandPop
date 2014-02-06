#!/usr/bin/env ruby

require 'mechanize'

agent = Mechanize.new
random = Random.new

agent.user_agent = 'Windows Chrome'
rockAndPop = agent.get('http://rockandpop.cl/2013/12/no-te-pierdas-el-rip-curl-surf-music-festival/')
formConcurso = rockAndPop.forms.first
formConcurso.input_1 = '' #Nombre
formConcurso.input_7 = '' #Rut
formConcurso.input_3 = '' #Edad
formConcurso.input_4 = '' #Comuna
formConcurso.input_5 = '' #Mail
formConcurso.input_6 = '' #Telefono

for i in 1..random.rand(30..50)
	formConcurso.submit
	puts "Numero de veces concursando #{i}"
	sleep(random.rand(30..50))
end
