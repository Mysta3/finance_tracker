class Friendship < ApplicationRecord
  belongs_to :user
  # self referential association
  belongs_to :friend, class_name: 'User'
end
