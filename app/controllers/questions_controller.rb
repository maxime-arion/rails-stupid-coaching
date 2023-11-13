class QuestionsController < ApplicationController
  def ask
    # Tu peux définir des variables d'instance ici si nécessaire
  end

  def answer
    # Traite la réponse ici (par exemple, récupère la question de params)
    @question = params[:question]

    # Logique du coach
    if @question.downcase == "i am going to work"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
