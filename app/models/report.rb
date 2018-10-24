class Report < ApplicationRecord
  def send
    puts self.chapter_universe
    puts self.task_universe
    puts self.time_window
    # Send an email with this information
    ReportMailer.sample_email().deliver
  end
end
