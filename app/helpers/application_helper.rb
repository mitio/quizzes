module ApplicationHelper
  def errors_on(instance)
    return unless instance.errors.any?

    model = instance.class

    error_box_header = content_tag :h2 do
      t :header, count: instance.errors.count, model: model.model_name.human, scope: [model.i18n_scope, :errors, :template]
    end

    content_tag :div, id: 'error_explanation' do
      error_box_header +
      content_tag(:ul) do
        instance.errors.full_messages.map { |msg| content_tag :li, msg }.join('').html_safe
      end
    end
  end
end
