module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Mind Thought").join(" - ")
      end
    end
  end
end
