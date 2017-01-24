module TopicsHelper
  def user_can_create_topic?
    current_user && current_user.admin?
  end

  def user_can_delete_topic?
    current_user && current_user.admin?
  end

  def user_can_edit_topic?
    current_user && (current_user.admin? || current_user.moderator?)
  end
end
