desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."

  puts "done."
end

task :print_report_data => :environment do
  @reports = Report.all
  @reports.each do |report|
    report.send_email()
  end
end
