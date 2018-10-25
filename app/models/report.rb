class Report < ApplicationRecord
  def send_report_email
    data = {}
    user = User.first
    following_ids = user.following_ids
    following_ids.each do |following_id|
      followed_account = User.find(following_id)
      actions =  ChapterAction.where("user_id = '#{followed_account.id}'")
      action_data = []
      actions.each do |action|
        action_data << action
      end
      data[followed_account.name] = action_data
    end
    ReportMailer.report_email(data).deliver
  end
end
