class SalesUploadsController < ApplicationController
  def index
    @sales_uploads = SalesUpload.all
  end

  def new
    @sales_upload = SalesUpload.new
  end
end
