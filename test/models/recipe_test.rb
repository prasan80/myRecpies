require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

def setup
    @recipe = Recipe.new(name: "Food",summary: "this is great", description: "this sucks")


end

test "recipe should be valid" do
    assert @recipe.valid?
end

test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
end

test "name length should not be too long" do
    @recipe.name = "a" * 101
    assert_not @recipe.valid?
end


test "name length should not be too short"
@recipe.description = "a" * 19
assert_not @recipe.valid?
end

end
