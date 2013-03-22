module OmniAuth
  module Strategies
    class Starterleague < OmniAuth::Strategies::OAuth2
      option :name, :starterleague

      option :client_options, {
        :site => (ENV['STARTERLEAGUE_DOMAIN'] || 'http://portal.starterleague.com'),
        :authorize_path => "/oauth/authorize"
      }

      uid do
        raw_info["id"]
      end

      info do
        {
          :email => raw_info["email"],
          :first_name => raw_info["first_name"],
          :last_name => raw_info["last_name"],
          :twitter => raw_info["twitter"],
          :github => raw_info["github"],
          :blog => raw_info["blog"],
          :avatar => raw_info["avatar"],
          :courses => raw_info["courses"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/users/current_user.json').parsed
      end
    end
  end
end