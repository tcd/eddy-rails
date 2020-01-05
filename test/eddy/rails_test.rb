require "test_helper"

class Eddy::Rails::Test < ActiveSupport::TestCase

  test "that 'Eddy::Rails' is exists" do
    assert_kind_of(Module, Eddy::Rails)
  end

  test "that 'Eddy::Rails' has a version" do
    refute_nil(Eddy::Rails::VERSION)
  end

end
