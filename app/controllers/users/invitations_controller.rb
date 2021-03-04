# class Users::InvitationsController < Devise::InvitationsController
#   private
#
#   # this is called when creating invitation
#   # should return an instance of resource class
#   def invite_resource
#     binding.pry
#     # skip sending emails on invite
#     super { |user| user.skip_invitation = true }
#   end
#
#   # this is called when accepting invitation
#   # should return an instance of resource class
#   def accept_resource
#     binding.pry
#     resource = resource_class.accept_invitation!(update_resource_params)
#     # Report accepting invitation to analytics
#     Analytics.report('invite.accept', resource.id)
#     resource
#   end
#
#   def new
#     binding.pry
#   end
#
#   def create
#     binding.pry
#   end
#
#   def edit
#     binding.pry
#   end
#
#   def update
#     binding.pry
#   end
# end