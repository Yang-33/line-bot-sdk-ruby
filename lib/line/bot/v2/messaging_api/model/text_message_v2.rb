# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './message'

module Line
  module Bot
    module V2
      module MessagingApi
        # @see https://developers.line.biz/en/reference/messaging-api/#text-message-v2
        class TextMessageV2 < Message
          # @!attribute [r] type
          #   @return [String] Type of message
          attr_reader :type
          # @!attribute [rw] quick_reply
          #   @return [QuickReply,nil] 
          attr_accessor :quick_reply
          # @!attribute [rw] sender
          #   @return [Sender,nil] 
          attr_accessor :sender
          # @!attribute [rw] text
          #   @return [String] 
          attr_accessor :text
          # @!attribute [rw] substitution
          #   @return [Object,nil] A mapping that specifies substitutions for parts enclosed in {} within the `text` field.
          attr_accessor :substitution
          # @!attribute [rw] quote_token
          #   @return [String,nil] Quote token of the message you want to quote.
          attr_accessor :quote_token

          # @param quick_reply [QuickReply,nil] 
          # @param sender [Sender,nil] 
          # @param text [String] 
          # @param substitution [Object,nil] A mapping that specifies substitutions for parts enclosed in {} within the `text` field.
          # @param quote_token [String,nil] Quote token of the message you want to quote.
          def initialize(
            quick_reply: nil,
            sender: nil,
            text:,
            substitution: nil,
            quote_token: nil,
            **dynamic_attributes
          )
            @type = "textV2"
            
            @quick_reply = quick_reply.is_a?(Line::Bot::V2::MessagingApi::QuickReply) || quick_reply.nil? ? quick_reply : Line::Bot::V2::MessagingApi::QuickReply.create(**quick_reply) # steep:ignore
            @sender = sender.is_a?(Line::Bot::V2::MessagingApi::Sender) || sender.nil? ? sender : Line::Bot::V2::MessagingApi::Sender.create(**sender) # steep:ignore
            @text = text
            @substitution = substitution
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

          def self.create(args) # steep:ignore
            return new(**args) # steep:ignore
          end
        end
      end
    end
  end
end
