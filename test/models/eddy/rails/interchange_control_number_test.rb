require "test_helper"

module Eddy::Rails
  class InterchangeControlNumberTest < ActiveSupport::TestCase

    # TODO: See if it's possible to raise `ActiveRecord::RecordNotUnique` when using Rails validators with db validators.
    test "number attribute is validated for uniqueness" do
      InterchangeControlNumber.create(number: 69)
      assert_raises(ActiveRecord::RecordInvalid) do
        icn = InterchangeControlNumber.new(number: 69)
        icn.save!()
      end
      assert_raises(ActiveRecord::RecordInvalid) { InterchangeControlNumber.create!(number: 69) }
    end

  end
end
