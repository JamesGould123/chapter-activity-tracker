desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."

  puts "done."
end

task :print_report_data => :environment do
  @reports = Report.all
  @reports.each do |report|
    puts report.chapter_universe
    puts report.task_universe
    puts report.time_window
  end
end
