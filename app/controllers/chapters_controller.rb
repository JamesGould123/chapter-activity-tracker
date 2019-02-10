require 'will_paginate/array'
class ChaptersController < ApplicationController
  def index
    @search_value = params[:q]
    if params[:q].blank?
      @users = User.where("permissions = 'chapter'").paginate(:page =>params[:page], :per_page => 10).order("name ASC")
    else
      @users = User.where("permissions = 'chapter' AND name LIKE '%' || ? || '%'", params[:q]).paginate(:page =>params[:page], :per_page => 10).order("name ASC")
    end
  end

  def show
    @user = User.where("slug = '#{params[:slug]}'")[0]
    @actions = ChapterAction.order("date_completed ASC").where("user_id = #{@user.id}")
    @spendings = Spending.where("user_id = #{@user.id}")
    get_chapter_total_points(@user)
    @cb_points = 0
    @pc_points = 0
    @te_points = 0
    @actions.each do |action|
      case Category.find(action.category_id).bucket_id
      when 1
        @cb_points = @cb_points + action.points
      when 2
        @pc_points = @pc_points + action.points
      when 3
        @te_points = @te_points + action.points
      end
    end
  end

  def leaderboard
    # Get a hash of the users which are chapters
    @users_hash = User.where("permissions = 'chapter'").as_json
    @leaderboard_hash = {}
    @users_hash.each do |user|
      @points = 0
      @actions = ChapterAction.where("user_id = #{user["id"]}")
      @actions.each do |action|
        @points = @points + action.points
      end
      @leaderboard_hash[user["name"]] = @points
    end

    @leaderboard_hash = @leaderboard_hash.sort_by { |name, points| points }
    @leaderboard_hash = @leaderboard_hash.reverse

    @users = @leaderboard_hash.paginate(:page =>params[:page], :per_page => 10)

  end

  def stats
    @actions = ChapterAction.all
    @spendings = Spending.where("rollover != 'true'")
    @categories = Category.all
    @users = User.all
    @cb_points = 0
    @pc_points = 0
    @te_points = 0
    @hq_cb = 0
    @hq_pc = 0
    @hq_te = 0
    @hq = 0
    # Init variable for how many chapters completed an action this week
    @last_week = 0

    @actions.each do |action|
      case Category.find(action.category_id).bucket_id
      when 1
        @cb_points = @cb_points + action.points
      when 2
        @pc_points = @pc_points + action.points
      when 3
        @te_points = @te_points + action.points
      end
    end

    # Count how many chapters completed an action this week.
    @users.each do |u|
      if (ChapterAction.where("user_id = '#{u.id}'").where(:date_completed => Date.today.beginning_of_day-6..Date.today.end_of_day).count > 0)
        @last_week+= 1
      end
    end

    @users.each do |u|
      if u.is_hq_cb?
        @hq_cb +=1
      end
      if u.is_hq_pc?
        @hq_pc +=1
      end
      if u.is_hq_te?
        @hq_te +=1
      end
      if u.is_hq?
        @hq += 1
      end
    end
  end

  private

  def get_chapter_total_points(user)
    @actions = ChapterAction.where("user_id = ?", user.id)
    puts @actions.to_s
  end

end
