require "test_helper"

class ActiveRecordPersistenceTest < ActiveSupport::TestCase

  def setup
    Eddy.config.persistence_method = :active_record
  end

  def teardown
    Eddy.config.persistence_method = :memory
  end

  test "that 'Eddy' is loaded" do
    refute_nil(Eddy::VERSION)
  end

  test "that the 'ActiveRecord' persistence method is loaded" do
    refute_nil(Eddy.data())
  end

  test "#interchange_control_numbers" do
    assert_equal([1, 2, 3], Eddy.data.interchange_control_numbers())
  end

  test "#functional_group_control_numbers" do
    assert_equal([1, 2], Eddy.data.functional_group_control_numbers("PO"))
  end

  test "#transaction_set_control_numbers" do
    assert_equal([1, 2], Eddy.data.transaction_set_control_numbers("850"))
  end

  test "#add_interchange_control_number" do
    assert_equal([1, 2, 3, 4], Eddy.data.add_interchange_control_number(4))
  end

  test "#add_functional_group_control_number" do
    assert_equal([1, 2], Eddy.data.add_functional_group_control_number(3, "PO"))
  end

  test "#add_transaction_set_control_number" do
    assert_equal([1, 2, 3], Eddy.data.add_transaction_set_control_number(3, "850"))
  end

end
