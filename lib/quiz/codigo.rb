
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
       # imprimir << "\t #{n}.-- #{opciones_respuestas}\n"
        n+=1
        opciones_respuestas.each_with_index do |op|
           imprimir << "\t #{op}\n"
            n+=1
        end
       imprimir
    end
    
end

############################################################################################################################

class Quest_Quiz
  
  RIGHT = :right
  WRONG = :wrong
  
  attr_accessor :titulo, :questions

  def initialize(titulo, &block)
    @titulo = titulo
    @questions = []
    @cont = 0
   #  if block_given?
   #     if block.arity == 1
    #       yield self
     #   else
           instance_eval &block
      #  end
     #end
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

  def question(pregunta, options)
    question = Question.new(pregunta,options)
    questions << question
  end
  
  
  def wrong 
    
    @cont +=1
   "#{@cont} :"
   #@questions[-1].opciones_respuestas[:wrong] << option #no machacar

    #@questions
 end
  
end

######################################################################################################################################## 
end#fin del modulo

if __FILE__ == $0 then #si se utiliza desde un require estas lineas no se ejecutan pero si lo ejecutamos en consola funciona para ejecutar 
  
  
 quiz = Quiz::Quest_Quiz.new("Cuestionario de LPP 05/12/2014") {
	question 'Cual es el tipo del objeto en el siguiente codigo Ruby class Objeto',
	    :right => 'Un Objeto',
	    wrong => 'Una instancia de la clase Class',
	    wrong => 'Una constante',
	    wrong => 'Ninguna de las anteriores'
	}

 puts quiz.to_s

  
end