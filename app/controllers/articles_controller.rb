# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index; end

  def show
    @article = Article.find(params[:id])
  end

  def edit; end
end
