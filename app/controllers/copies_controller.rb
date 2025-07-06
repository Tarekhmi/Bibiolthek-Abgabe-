class CopiesController < ApplicationController
  def index
    @copies = Copy.includes(:book).all
  end
end
