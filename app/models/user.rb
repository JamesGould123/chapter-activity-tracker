class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :chapter_actions
  has_many :spendings

#TODO: this should just be one method, instead of four for each criteria
  def is_hq_cb?
    cb_points = 0
    cb_actions = ChapterAction.where("id = #{self.id}")
    cb_actions.each do |action|
      if Category.find(action.category_id).bucket_id == 1
        cb_points += action.points
      end
    end
    return cb_points >= 20
  end

  def is_hq_pc?
    pc_points = 0
    pc_actions = ChapterAction.where("id = #{self.id}")
    pc_actions.each do |action|
      if Category.find(action.category_id).bucket_id == 2
        pc_points += action.points
      end
    end
    return pc_points >= 20
  end

  def is_hq_te?
    te_points = 0
    te_actions = ChapterAction.where("id = #{self.id}")
    te_actions.each do |action|
      if Category.find(action.category_id).bucket_id == 3
        te_points += action.points
      end
    end
    return te_points >= 20
  end

  def is_hq?
    points = 0
    actions = ChapterAction.where("id = #{self.id}")
    actions.each do |action|
      points += action.points
    end
    return points > 50
  end
end
