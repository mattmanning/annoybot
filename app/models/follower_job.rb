class FollowerJob
  def perform
    followers = Twitter.followers('mattmanning').users.map(&:screen_name)
  end
end