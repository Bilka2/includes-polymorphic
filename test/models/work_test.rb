require "test_helper"

class WorkTest < Minitest::Test
  def test_includes_scoped_polymorphic
    f1 = Fandom.create!
    rel1 = Relationship.create!
    Work.create!(fandoms: [f1], relationships: [rel1])
    Work.first.relationships.each { |rel| assert_equal "Relationship", rel.type } # passes

    work_with_includes = Work.includes(fandoms: :merger, relationships: :merger).first
    work_with_includes.relationships.each { |rel| assert_equal "Relationship", rel.type } # fails
  end
end
