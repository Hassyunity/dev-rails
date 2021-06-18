class BooksController < ApplicationController 
    def index 
      @books = Book.all
    end
    
    def shown
        @books = Book.all 
    end

    
end
