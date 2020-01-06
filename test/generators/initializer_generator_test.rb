require "test_helper"
require "generators/eddy/initializer/initializer_generator"
require "pry"

# https://rossta.net/blog/testing-rails-generators.html
# https://github.com/foundation/foundation-rails/blob/4dfe9b12e8cf3a1aa04b257ff64c782832efc6a0/spec/support/helpers.rb
module Eddy::Rails
  class InitializerGeneratorTest < Rails::Generators::TestCase
    tests(InitializerGenerator)
    destination(Rails.root.join("tmp/generators"))
    setup(:prepare_destination)
    teardown()

    test "generator runs without errors" do
      assert_nothing_raised do
        run_generator ["arguments"]
      end
    end

    # test "generating an initializer file" do
    #   assert_file(Rails.root.join("tmp/generators/config/initializers/eddy.rb"))
    # end

  end
end
