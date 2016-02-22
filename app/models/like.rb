class Like < ActiveRecord::Base
  belongs_to :likable, polymorphic: true
  belongs_to :liker, polymorphic: true
end
