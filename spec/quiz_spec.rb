require "quiz"


module Quiz
     describe Quiz::Quest_Quiz do
     before :each do
	@quiz = Quiz::Quest_Quiz.new("Cuestionario de LPP 05/12/2014") {

	question 'Cual es el tipo del objeto en el siguiente codigo Ruby class Objeto',
	    :right => 'Un Objeto',
	    wrong => 'Una instancia de la clase Class',
	    wrong => 'Una constante',
	    wrong => 'Ninguna de las anteriores'
	
	
	}
  end#end del before

  context "Pruebas para la clase Questionario_Quiz" do
      it "El atributo es de la clase" do
	expect(@quiz.class).to eq(Quest_Quiz )
      end
       it "Tiene un metodo to_s" do
	expect(@quiz.class).to respond_to :to_s
      end
  end#end context
end#end describe quiz

end#fin del module
