# Webhook Type Definition
# Webhook event definition of the LINE Messaging API
#
# The version of the OpenAPI document: 1.0.0
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

module Line
  module Bot
    module V2
      module Webhook
        # Content of the account link event.
        class LinkContent
          # @!attribute [rw] result
          #   @return [String] ('ok'|'failed') One of the following values to indicate whether linking the account was successful or not
          attr_accessor :result
          # @!attribute [rw] nonce
          #   @return [String] Specified nonce (number used once) when verifying the user ID.
          attr_accessor :nonce

          # @param result [String] ('ok'|'failed') One of the following values to indicate whether linking the account was successful or not
          # @param nonce [String] Specified nonce (number used once) when verifying the user ID.
          def initialize(
            result:,
            nonce:,
            **dynamic_attributes
          )
            
            @result = result
            @nonce = nonce

            dynamic_attributes.each do |key, value|
              self.class.attr_accessor key

              if value.is_a?(Hash)
                struct_klass = Struct.new(*value.keys.map(&:to_sym))
                struct_values = value.map { |_k, v| v.is_a?(Hash) ? Line::Bot::V2::Utils.hash_to_struct(v) : v }
                instance_variable_set("@#{key}", struct_klass.new(*struct_values))
              else
                instance_variable_set("@#{key}", value)
              end
            end
          end

          def self.create(args) # steep:ignore
            return new(**args) # steep:ignore
          end
        end
      end
    end
  end
end
