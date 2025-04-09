# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

module Line
  module Bot
    module V2
      module ModuleAttach
        # Attach by operation of the module channel provider
        class AttachModuleResponse
          # @!attribute [rw] bot_id
          #   @return [String] User ID of the bot on the LINE Official Account.
          attr_accessor :bot_id
          # @!attribute [rw] scopes
          #   @return [Array[String]] Permissions (scope) granted by the LINE Official Account admin.
          attr_accessor :scopes

          # @param bot_id [String] User ID of the bot on the LINE Official Account.
          # @param scopes [Array[String]] Permissions (scope) granted by the LINE Official Account admin.
          def initialize(
            bot_id:,
            scopes:,
            **dynamic_attributes
          )
            
            @bot_id = bot_id
            @scopes = scopes.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::ModuleAttach::string.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end

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
