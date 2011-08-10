class AnnoyerJob
  def initialize(screen_name)
    @screen_name = screen_name
  end

  def perform
    Twitter.update("@#{@screen_name} #{Annoyance.random}")
  end
end