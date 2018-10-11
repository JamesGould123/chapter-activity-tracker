class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :chapter_actions

  def is_hq_cb?
    true
  end

  def is_hq_pc?
    true
  end

  def is_hq_te?
    true
  end

  def is_hq?
    true
  end
end
