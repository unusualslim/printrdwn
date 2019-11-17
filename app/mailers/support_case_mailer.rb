class SupportCaseMailer < ApplicationMailer
  default from: 'notifcations@printrdwn.com'

  def new_case_email
    @support_case = params[:support_case]   
    mail(to: @support_case.user.email, bcc: 'support@perrybrothersoil.com',  subject: 'You have created a new Support Case')
  end

  def update_case_email
    @support_case = params[:support_case]
    mail(to: @support_case.user.email, subject: 'Your Support Case has been Updated')
  end

end
