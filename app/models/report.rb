class Report < ApplicationRecord
  def send_report_email
    data = {}
    staffer = User.find(self.staffer_id)
    following_ids = staffer.following_ids
    following_ids.each do |following_id|
      followed_account = User.find(following_id)
      # If time window is daily, get the actions for today
      # If time window is weekly, get the actions for the last week
      if time_window == 'daily'
        actions =  ChapterAction.where("user_id = '#{followed_account.id}'").where(:date_completed => Date.yesterday..Date.today)
      else
        actions =  ChapterAction.where("user_id = '#{followed_account.id}'").where(:date_completed => Date.today-6..Date.today)
      end
      action_data = []
      actions.each do |action|
        description = Category.find(action.category_id).name
        action_data << description
      end
      data[followed_account.name] = action_data
    end
    ReportMailer.report_email(data).deliver
  end
end

# 1. scheduler rake task fires one task
# 2. That task runs through the list of all reports
# 3. Each report runs send_report_email with options
# 4. So each report needs to know:
## - Recipient address
## - Recipient id to get following ids
## - How often it should fire (daily or weekly?)
## - Action ID filter
