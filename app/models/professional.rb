class Professional < ApplicationRecord
  has_many :orders
  belongs_to :user,optional: true
  # after_destroy :log_destroy_action
  # def log_destroy_action
  #   puts "Professional destroyed"
  # end
end
