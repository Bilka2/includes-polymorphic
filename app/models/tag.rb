class Tag < ActiveRecord::Base
  TYPES = ['Fandom', 'Relationship']

  has_many :mergers, foreign_key: 'merger_id', class_name: 'Tag'
  belongs_to :merger, class_name: "Tag", optional: true

  has_many :taggings
end
