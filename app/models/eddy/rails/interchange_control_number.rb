module Eddy::Rails
  # Interchange Control Number
  class InterchangeControlNumber < ApplicationRecord
    # @!attribute number [rw]
    #   @return [Integer]
    # @!attribute sent [rw]
    #   @return [Boolean]
    # @!attribute received [rw]
    #   @return [Boolean]
    validates(:number, uniqueness: true)

    # @!method self.create!()
    #   @param number [Integer]
    #   @param sent [Boolean] (false)
    #   @param received [Boolean] (false)
    #   @return [self]

  end
end
