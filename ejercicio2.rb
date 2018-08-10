# Ejercicio 2
require 'Date'
# Clase cursos
class Course
  def initialize(name, date1, date2)
    @name = name
    begin
      @date1 = Date.parse(date1)
      @date2 = Date.parse(date2)
    rescue ArgumentError => e
      print "Ocurrio un error #{e}"
    end
  end

  def to_s
    "#{@name}: #{@date1}, #{@date2}"
  end

  def start_before_at?(date)
    if date >= Date.parse('01/01/2019')
      raise 'La fecha '
    else
      @start_date < date
    end
  end
end

def leer_curso
  o = []
  f = File.read('cursos.txt')
  f.split("\n").each do |linea|
    campo = linea.split(', ')
    o << Course.new(campo[0], campo[1], campo[2]).to_s
  end
  o
end

t = leer_curso
print t
