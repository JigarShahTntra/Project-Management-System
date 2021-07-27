# frozen_string_literal: true

# Module-User-Helper
module UserHelper
  def check_confirmation(resource)
    devise_mapping.confirmable? && resource.pending_reconfirmation?
  end

  def check_pending_confirmation_email(user)
    user.pending_reconfirmation? ? user.unconfirmed_email : user.email
  end

  def minimum_password_length(user)
    return user.minimum_password_length if user.minimum_password_length?
  end

  def email_or_unconfirm_email(user)
    user&.unconfirmed_email? ? user.unconfirmed_email : user.email
  end
end
