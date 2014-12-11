
module Quiz

class Question
    attr_reader :pregunta, :opciones_respuestas

    def initialize (pregunta, opciones_respuestas)
        @pregunta = pregunta
        @opciones_respuestas = opciones_respuestas
    end
    
    def to_s
        imprimir = ""
        imprimir << @pregunta << "\n\n\n"
        n = 1
        imprimir << "\t #{n}.-- #{opciones_respuestas[:right]}\n"
        n+=1
        opciones_respuestas[:wrong].each do |op|
           imprimir << "\t #{n}.-- #{op}\n"
            n+=1
        end
       imprimir
    end
    
end

############################################################################################################################

class Quest_Quiz
  
  attr_accessor :titulo, :questions

  def initialize(titulo, &block)
    @titulo = titulo
    @questions = []
     if block_given?
        if block.arity == 1
           yield self
        else
           instance_eval &block
        end
     end
  end
  
  def to_s
    imprimir = "\n\n\n"
    imprimir << @titulo
    imprimir << "\n\n\n"
    cont = 1
    questions.each do |question|
     imprimir << " #{cont} => ) #{question}\n"
     cont += 1
    end
   imprimir
  end

  def question(pregunta, options = {})
    question = Question.new(pregunta,options)
    questions << question
  end
  
  def wrong (option)
    @questions[-1].opciones_respuestas[:wrong] << option #no machacar
   # @questions.opciones_respuestas[:wrong].push (option)
    #el ultimo objeto del array
  end
  
end

######################################################################################################################################## 
end#fin del modulo

if __FILE__ == $0 then #si se utiliza desde un require estas lineas no se ejecutan pero si lo ejecutamos en consola funciona para ejecutar 
  
  
 quiz = Quiz::Quest_Quiz.new("Cuestionario de LPP 05/12/2014") {
	question 'Cual es el tipo del objeto en el siguiente codigo Ruby class Objeto',
	    :right => 'Un Objeto',
	    :wrong => []
	    wrong 'Una instancia de la clase Class'
	    wrong 'Una constante'
	    wrong 'Ninguna de las anteriores'
	
	question 'Salida de:class Xyz tdef pots @nice tend end',
	    :right => 'nil',
	    :wrong => []
	    wrong '#<Xyz:0x00000002bf0ed0'
	    wrong '0'
	    wrong 'Ninguna de las anteriores'
	
	question 'class Array def say_hi HEY! end end p[1,, bob].say_hi',
	    :right => 'Ninguna de las anteriores',
	    :wrong => []
	    wrong '1'
	    wrong 'bob'
	    wrong 'HEY!'

	question 'Cuantos argumentos de tipo bloque puede recibir un metodo?',
	    :right => '1',
	    :wrong => []
	    wrong '2'
	    wrong 'muchos'
	    wrong 'los que defina el usuario'
        
	question 'Es apropiado que una clase Tablero herede de una clase Juego',
	    :right=>'Cierto',
	    :wrong => []
	    wrong 'Falso'
    
	question 'Salida class de hash_raro = {[1, 2, 3] => Object.new(),Hash.new => :toto}',
	    :right =>'Cierto',
	    :wrong => []
	    wrong 'Falso'
       }
 puts quiz.to_s

  
end