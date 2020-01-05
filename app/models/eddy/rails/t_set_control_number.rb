module Eddy::Rails
  # Transaction Set Control Number
  class TSetControlNumber < ApplicationRecord
    # @!attribute number [rw]
    #   @return [Integer]
    # @!attribute t_set [rw]
    #   @return [String]
    # @!attribute sent [rw]
    #   @return [Boolean]
    # @!attribute received [rw]
    #   @return [Boolean]
    validates(
      :t_set,
      presence: true,
      format: {
        with: /\A[1-9][0-9]{2}\z/,
        message: "%{value} is not a valid Transaction Set",
      },
      # inclusion: {
      #   in: Eddy::Rails.valid_transaction_sets(),
      #   message: "%{value} is not a valid Transaction Set",
      # },
    )
    validates(
      :number,
      uniqueness: {
        scope: :t_set,
        message: "Transaction Set Control Numbers must be unique within a Transaction Set",
      },
    )

    # @!method self.create!()
    #   @param number [Integer]
    #   @param t_set [String]
    #   @param sent [Boolean] (false)
    #   @param received [Boolean] (false)
    #   @return [self]

  end
end
