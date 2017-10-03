class CodeClansController < ApplicationController

    def index
        codeclans = CodeClan.all
        render :json => codeclans
    end
end