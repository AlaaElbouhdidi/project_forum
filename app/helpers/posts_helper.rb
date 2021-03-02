module PostsHelper
  def post_author(post)
    user_signed_in? && current_user.id == post.user_id
  end

  def reply_author(reply)
    user_signed_in? && current_user.id == reply.user_id
  end
end
