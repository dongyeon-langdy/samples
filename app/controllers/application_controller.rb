class ApplicationController < ActionController::Base
  rescue_from :ActiveRecord::RecordNotFound, with: :record_not_found

  def record_not_found(errors)
    render json: { error: { message: 'Record not found', errors: } }, status: :not_found
  end
end
