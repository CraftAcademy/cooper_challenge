class User < ActiveRecord::Base
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #, :confirmable
  include DeviseTokenAuth::Concerns::User
  has_many :performance_data, class_name: 'PerformanceData'
end
