class Work < ActiveRecord::Base
  has_many :taggings, inverse_of: :work
  has_many :tags, through: :taggings

  Tag::TYPES.each do |type|
    has_many type.underscore.pluralize.to_sym,
             -> { where(tags: { type: type }) },
             through: :taggings,
             source: :tag,
             source_type: "Tag"
  end
end
