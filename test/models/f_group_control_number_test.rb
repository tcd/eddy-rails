require "test_helper"

module Eddy::Rails
  class FGroupControlNumberTest < ActiveSupport::TestCase

    # TODO: See if it's possible to raise `ActiveRecord::RecordNotUnique` when using Rails validators with db validators.
    test "number attribute is validated for uniqueness" do
      FGroupControlNumber.create(number: 1, f_group: "SH")
      assert_raises(ActiveRecord::RecordInvalid) do
        fgcn = FGroupControlNumber.new(number: 1, f_group: "SH")
        fgcn.save!()
      end
      assert_raises(ActiveRecord::RecordInvalid) { FGroupControlNumber.create!(number: 1, f_group: "SH") }
    end

    test "f_group validation" do
      assert_raises(ActiveRecord::RecordInvalid) { FGroupControlNumber.create!(number: 1, f_group: "SHH") }
    end

  end
end
