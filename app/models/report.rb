class Report < ApplicationRecord
  def send
    # Send an email with this information
    ReportMailer.report_email(self).deliver
  end
end
