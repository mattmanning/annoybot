class FollowerJob
  def perform
    followers = Twitter.followers.users
    followers.each do |follower|
      Delayed::Job.enqueue AnnoyerJob.new(follower.screen_name)
    end
  end
end