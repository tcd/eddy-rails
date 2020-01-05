module Eddy::Rails
  # Functional Group Control Number
  class FGroupControlNumber < ApplicationRecord
    # @!attribute number [rw]
    #   @return [Integer]
    # @!attribute f_group [rw]
    #   @return [String]
    # @!attribute sent [rw]
    #   @return [Boolean]
    # @!attribute received [rw]
    #   @return [Boolean]
    validates(
      :f_group,
      presence: true,
      format: {
        with: /\A[A-Z0-9]{2}\z/,
        message: "%{value} is not a valid Functional Group",
      },
      # inclusion: {
      #   in: Eddy::Rails.functional_groups(),
      #   message: "%{value} is not a valid Functional Group",
      #  },
    )
    validates(
      :number,
      presence: true,
      uniqueness: {
        scope: :f_group,
        message: "Functional Group Control Numbers must be unique within a Functional Group",
      },
    )

    # @!method self.create!()
    #   @param number [Integer]
    #   @param f_group [String]
    #   @param sent [Boolean] (false)
    #   @param received [Boolean] (false)
    #   @return [self]

  end
end
