require "test_helper"

module Eddy::Rails
  class TSetControlNumberTest < ActiveSupport::TestCase

    # TODO: See if it's possible to raise `ActiveRecord::RecordNotUnique` when using Rails validators with db validators.
    test "number attribute is validated for uniqueness" do
      TSetControlNumber.create(number: 1, t_set: "069")
      assert_raises(ActiveRecord::RecordInvalid) do
        tscn = TSetControlNumber.new(number: 1, t_set: "069")
        tscn.save!()
      end
      assert_raises(ActiveRecord::RecordInvalid) { TSetControlNumber.create!(number: 1, t_set: "069") }
    end

    test "t_set validation" do
      assert_raises(ActiveRecord::RecordInvalid) { TSetControlNumber.create!(number: 1, t_set: "069") }
    end

  end
end
