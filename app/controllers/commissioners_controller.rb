class CommissionersController < ApplicationController
    def index
        @commissioners = Commissioner.all
    end
end
