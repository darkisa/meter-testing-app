module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?
    @errors = resource.errors
    render 'layouts/error_messages'
  end
end