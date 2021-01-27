class ReviewsController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update]
  before_action :set_review, only: [:show, :edit, :update]

  def index
    @reviews = Review.all
  end

  def show
  end
 
  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @supplier = Supplier.find(params[:supplier_id])
    @review = @supplier.reviews.create(review_params)
    redirect_to supplier_path(@supplier)
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @supplier }
        format.json { render :show, status: :ok, location: @supplier }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end

  end

  private

    def set_supplier
      @supplier = Supplier.find(params[:supplier_id])
    end

    def set_review
      @review = @supplier.reviews.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:title, :body)
    end
end
