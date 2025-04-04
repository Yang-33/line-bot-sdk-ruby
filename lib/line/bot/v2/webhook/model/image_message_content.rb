# Webhook Type Definition
# Webhook event definition of the LINE Messaging API
#
# The version of the OpenAPI document: 1.0.0
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './message_content'

module Line
  module Bot
    module V2
      module Webhook
        class ImageMessageContent < MessageContent
          attr_reader :type # Type
          attr_accessor :id # Message ID
          attr_accessor :content_provider
          attr_accessor :image_set
          attr_accessor :quote_token # Quote token to quote this message. 

          def initialize(
            id:,
            content_provider:,
            image_set: nil,
            quote_token:,
            **dynamic_attributes
          )
            @type = "image"
            
            @id = id
            @content_provider = content_provider.is_a?(Line::Bot::V2::Webhook::ContentProvider) ? content_provider : Line::Bot::V2::Webhook::ContentProvider.create(**content_provider)
            @image_set = image_set.is_a?(Line::Bot::V2::Webhook::ImageSet) || image_set.nil? ? image_set : Line::Bot::V2::Webhook::ImageSet.create(**image_set)
            @quote_token = quote_token

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

          def self.create(args)
            return new(**args)
          end
        end
      end
    end
  end
end
