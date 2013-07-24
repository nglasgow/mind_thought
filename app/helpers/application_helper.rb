module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Mind_Thought").join(" - ")
      end
    end
  end
end
