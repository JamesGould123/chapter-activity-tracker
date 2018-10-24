class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "Working"
  end
end
