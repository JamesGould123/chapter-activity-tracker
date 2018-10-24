class Report < ApplicationRecord
  def send_email
    puts self.chapter_universe
    puts self.task_universe
    puts self.time_window
  end
end
