#!/usr/bin/env ruby

require 'mechanize'

agent = Mechanize.new
random = Random.new

agent.user_agent = 'Windows Chrome'
rockAndPop = agent.get('http://rockandpop.cl/2013/12/no-te-pierdas-el-rip-curl-surf-music-festival/')
formConcurso = rockAndPop.forms.first
formConcurso.input_1 = 'Alvaro Alvarez Arancibia' #Nombre
formConcurso.input_7 = '16889905-K' #Rut
formConcurso.input_3 = '24' #Edad
formConcurso.input_4 = 'Nunoa' #Comuna
formConcurso.input_5 = 'alv.ale.alvarez@gmail.com' #Mail
formConcurso.input_6 = '83037525' #Telefono

for i in 1..random.rand(30..50)
	formConcurso.submit
	puts "Numero de veces concursando #{i}"
	sleep(random.rand(30..50))
end
