require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class AppFigures < OmniAuth::Strategies::OAuth
      option :name, 'appfigures'
      option :failure_path, '/' 

      option :client_options, {
        :access_token_path => "/v2/oauth/access_token",
        :authorize_path => "/v2/oauth/authorize",
        :request_token_path => "/v2/oauth/request_token",
        :site => "https://api.appfigures.com"
      }

      uid {
        user_info['id']
      }

      info do
        {
          :email => user_info['email']
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.decode(access_token.get('/v2/').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

      def user_info
        @user_info ||= raw_info.nil? ? {} : raw_info["user"]
      end

      def request_phase
        options[:authorize_params] = {:perms => options[:scope]} if options[:scope]
        super
      rescue ::OAuth::Unauthorized
        redirect options.failure_path
      end
    end
  end
end

