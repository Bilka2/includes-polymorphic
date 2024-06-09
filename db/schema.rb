ActiveRecord::Schema.define do
  create_table "taggings", id: :integer, force: :cascade do |t|
    t.integer "tag_id"
    t.string "tag_type", limit: 100, default: ""
    t.integer "work_id"
  end

  create_table "tags", id: :integer, force: :cascade do |t|
    t.string "type"
    t.integer "merger_id"
  end

  create_table "works", id: :integer, force: :cascade do |t|
  end
end
