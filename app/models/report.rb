class Report < ApplicationRecord
  def send_report_email_daily
    if self.time_window == "daily"
      data = {}
      staffer = User.find(self.staffer_id)
      address = staffer.email
      following_ids = staffer.following_ids
      following_ids.each do |following_id|
        followed_account = User.find(following_id)
        actions =  ChapterAction.where("user_id = '#{followed_account.id}'").where(:date_completed => Date.yesterday..Date.today)
        action_data = []
        actions.each do |action|
          description = Category.find(action.category_id).name
          action_data << description
        end
        data[followed_account.name] = action_data
      end
      ReportMailer.report_email(data, address).deliver
    end
  end
    def send_report_email_weekly
    if self.time_window == "weekly"
      data = {}
      staffer = User.find(self.staffer_id)
      address = staffer.email
      following_ids = staffer.following_ids
      following_ids.each do |following_id|
        followed_account = User.find(following_id)
        actions =  ChapterAction.where("user_id = '#{followed_account.id}'").where(:date_completed => Date.today-6..Date.today)
        action_data = []
        actions.each do |action|
          description = Category.find(action.category_id).name
          action_data << description
        end
        data[followed_account.name] = action_data
      end
      ReportMailer.report_email(data, address).deliver
    end
  end
end
