class CaseMailer < ApplicationMailer
default from: 'notifcations@livelyteams.com'

 def new_case_email(new_case)
   @case = new_case
   mail(to: [@case.requested_by.email, @case.assigned_to.email],  subject: "[#{@case.severity.severity}], #{@case.subject}")
 end

 def update_case_email(updated_case)
   @case = updated_case
   mail(to: [@case.requested_by.email, @case.assigned_to.email], subject: 'Your case has been Updated')
 end
end
