class ReportMailer < ApplicationMailer
  default from: "tyler.williams@ssdp.org"

  def sample_email
    puts "Sending sample email"
    mail(to: "tyler.williams@ssdp.org", subject: 'Sample Email')
  end

  def report_email(report)
    @report = report
    mail(to: "tyler.williams@ssdp.org", subject: 'CAT Report')
  end
end
