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
  end
end
