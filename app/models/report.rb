class Report < ApplicationRecord
  def send_report_email
    # Send an email with this information
    ReportMailer.report_email(self).deliver
  end
end
