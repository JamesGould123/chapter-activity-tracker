module ChapterActionsHelper
  def user_is_chapter?
    current_user.permissions == "chapter"
  end
end
