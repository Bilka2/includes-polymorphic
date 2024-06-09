class Tagging < ActiveRecord::Base
  belongs_to :tag, polymorphic: true, inverse_of: :taggings
  belongs_to :work, inverse_of: :taggings
end
