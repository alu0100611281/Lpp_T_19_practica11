require "quiz"


module Quiz
     describe Quiz::Quest_Quiz do
     before :each do
	@quiz = Quiz::Quest_Quiz.new("Cuestionario de LPP 05/12/2014") {

	
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
