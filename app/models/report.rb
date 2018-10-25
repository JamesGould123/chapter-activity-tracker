class Report < ApplicationRecord
  def send_report_email
    #  Find all the ids of people I follow
    user = User.first
    following_ids = user.following_ids
    following_ids.each do |following_id|
      followed_account = User.find(following_id)
      puts followed_account.name
      actions =  ChapterAction.where("user_id = '#{followed_account.id}'")
      actions.each do |action|
        puts Category.find(action.category_id).name
      end
    end
    # Send an email with this information
    #ReportMailer.report_email(self).deliver
  end
end
