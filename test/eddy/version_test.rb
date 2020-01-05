require "test_helper"

class VersionTest < ActiveSupport::TestCase

  test "that 'Eddy::Rails' is loaded" do
    refute_nil(Eddy::Rails::VERSION)
  end

  test "that 'Eddy' is loaded" do
    refute_nil(Eddy::Rails::VERSION)
  end

end
