# Preview all emails at http://127.0.0.1:3000/rails/mailers/devise_mailer
class DeviseMailerPreview < ActionMailer::Preview
  def confirmation_instructions
    Devise::Mailer.confirmation_instructions(User.first, {})
  end

  def reset_password_instructions
    Devise::Mailer.reset_password_instructions(User.first, {})
  end
end
