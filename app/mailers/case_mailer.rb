class CaseMailer < ApplicationMailer
default from: 'notifcations@livelyteams.com'

 def new_case_email(new_case)
   @case = new_case
   recipient = []
   @case.case_users.each do |cu|
     recipient.push(cu.user.email)    
   end
   recipient.push(@case.requested_by.email)
   recipient.push(@case.assigned_to.email)
 
    mail(
       to: recipient.uniq,  
       subject: "[#{@case.severity.severity}], #{@case.subject}"
     )
 end

 def update_case_email(updated_case)
   @case = updated_case
   mail(to: [@case.requested_by.email, @case.assigned_to.email], subject: "Case No. #{@case.id} has been updated")
 end
 def new_comment_case_email(updated_case)
   @case = updated_case
   mail(to: [@case.requested_by.email, @case.assigned_to.email], subject: "Case No. #{@case.id} has a new comment")
 end

end
