desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."

  puts "done."
end

task :send_reports_daily => :environment do
  @reports = Report.all
  @reports.each do |report|
    report.send_report_email_daily()
  end
end

task :send_reports_weekly => :environment do
  @reports = Report.all
  @reports.each do |report|
    report.send_report_email_weekly()
  end
end
