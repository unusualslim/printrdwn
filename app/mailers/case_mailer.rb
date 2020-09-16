class CaseMailer < ApplicationMailer
default from: 'notifcations@printrdwn.com'

 def new_case_email
   @case = params[:case]
   mail(to: @case.requested_by.email, bcc: 'support@perrybrothersoil.com',  subject: 'You have created a new case')
 end

 def update_case_email
   @case = params[:case]
   mail(to: @case.requested_by.email, subject: 'Your case has been Updated')
 end
end
