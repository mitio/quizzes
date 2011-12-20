ActiveAdmin.register Quiz do
  index do
    id_column
    column :name
    column :created_at
    column :updated_at
    default_actions
  end
end
