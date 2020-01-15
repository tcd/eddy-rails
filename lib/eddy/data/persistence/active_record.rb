module Eddy
  module Data
    module Persistence
      # Persist data to a database using Active Record.
      class ActiveRecord

        # @return [void]
        def initialize()
          unless defined?(Rails) && defined?(Eddy::Rails)
            raise Eddy::Errors::Error, "ActiveRecord persistence method can currently only be used with Ruby on Rails"
          end
        end

        # @return [Array<Integer>]
        def interchange_control_numbers()
          return Eddy::Rails::InterchangeControlNumber.select(:number).collect(&:number)
        end

        # @param transaction_set_id [String]
        # @return [Array<Integer>]
        def transaction_set_control_numbers(transaction_set_id)
          Eddy::Rails::TSetControlNumber.where(t_set: transaction_set_id).select(:number).collect(&:number)
        end

        # @param new_ctrl_num [Integer]
        # @param sent [Boolean] (false)
        # @param received [Boolean] (false)
        # @return [Array<Integer>]
        def add_interchange_control_number(new_ctrl_num, sent: false, received: false)
          Eddy::Rails::InterchangeControlNumber.create!(
            number: new_ctrl_num,
            sent: sent,
            received: received,
          )
          return self.interchange_control_numbers()
        end

        # @param transaction_set_id [String]
        # @param new_ctrl_num [Integer]
        # @param sent [Boolean] (false)
        # @param received [Boolean] (false)
        # @return [Array<Integer>]
        def add_transaction_set_control_number(transaction_set_id, new_ctrl_num, sent: false, received: false)
          Eddy::Rails::TSetControlNumber.create!(
            number:   new_ctrl_num,
            t_set:    transaction_set_id,
            sent:     sent,
            received: received,
          )
          return transaction_set_control_numbers(transaction_set_id)
        end

      end
    end
  end
end
