# Webhook Type Definition
# Webhook event definition of the LINE Messaging API
#
# The version of the OpenAPI document: 1.0.0
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './membership_content'

module Line
  module Bot
    module V2
      module Webhook
        class LeftMembershipContent < MembershipContent
          # @!attribute [r] type
          #   @return [String] Type of membership event.
          attr_reader :type
          # @!attribute [rw] membership_id
          #   @return [Integer] The ID of the membership that the user left. This is defined for each membership.
          attr_accessor :membership_id

          # @param membership_id [Integer] The ID of the membership that the user left. This is defined for each membership.
          def initialize(
            membership_id:,
            **dynamic_attributes
          )
            @type = "left"
            
            @membership_id = membership_id

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
