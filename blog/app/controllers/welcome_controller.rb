class WelcomeController < ApplicationController
      def index
        @number = 323
        @users = current_user
      end

end
