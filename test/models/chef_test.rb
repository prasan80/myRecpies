require 'test_helper'

class ChefTest < ActiveSupport::TestCase
    
    def setup
    @chef = Chef.new(chefname: "john", email: "john@example.com")
end

test "chef should be valid"
assert @chef.valid?

test "chefname should not be too short" do
    @chef.chefname = "aa"
    assert_not @chef.valid?
end

test "email should be present" do
    @chef.email = " "
    assert_not @chef.valid?
end

test "email length should be within bounds" do
    
    @chef.email = "a" * 101 + @example.com
    assert_not @chef.valid?

end

test "email address should be unique" do
    dup_chef = @chef.dup_chef
    dupe_chef.email = @chef.email.upcase
    @chef.case
    assert_not dup_chef.valud?
end




