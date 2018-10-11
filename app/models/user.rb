class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :chapter_actions

  def is_hq_cb?
  end

  def is_hq_pc?
  end

  def is_hq_te?
  end

  def is_hq?
  end
end
