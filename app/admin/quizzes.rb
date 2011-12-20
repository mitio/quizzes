ActiveAdmin.register Quiz do
  index do
    id_column
    column :name
    column :created_at
    column :updated_at
    column :questions do |quiz|
      link_to quiz.questions.size, admin_quiz_questions_path(quiz)
    end
    default_actions
  end
end
