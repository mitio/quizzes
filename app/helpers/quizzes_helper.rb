module QuizzesHelper
  def title_for(quiz)
    content_tag :h1, quiz.name
  end
end
