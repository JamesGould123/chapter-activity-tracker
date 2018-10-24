desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."

  puts "done."
end

task :send_reports => :environment do
  @reports = Report.all
  @reports.each do |report|
    report.send_report_email()
  end
end
