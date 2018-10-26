class ReportMailer < ApplicationMailer
  default from: "tyler.williams@ssdp.org"

  def sample_email
    puts "Sending sample email"
    mail(to: "tyler.williams@ssdp.org", subject: 'Sample Email')
  end

  def report_email(report, address)
    @data = report
    mail(to: address, subject: 'CAT Report')
  end
end
