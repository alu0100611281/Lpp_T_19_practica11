require "quiz"


module Quiz
     describe Quiz::Quest_Quiz do
     before :each do
	@quiz = Quiz::Quest_Quiz.new("Cuestionario de LPP 05/12/2014") {

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
  end#end del before

	}
  end#end del before

  context "Pruebas para la clase Questionario_Quiz" do
      it "El atributo es de la clase" do
	expect(@quiz.class).to eq(Quest_Quiz )
      end

  end#end context
end#end describe quiz

end#fin del module
