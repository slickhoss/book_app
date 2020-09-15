class PagesController < ApplicationController
    def about
        @title = "About us";
        @content = "This is an application used to record and store books"
    end
end
