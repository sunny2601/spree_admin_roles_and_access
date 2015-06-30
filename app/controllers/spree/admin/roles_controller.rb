module Spree
	module Admin
    class RolesController < ResourceController
      before_filter :load_permissions, :only => [:edit, :new, :create, :update]
      before_filter :restrict_unless_editable, :only => [:edit, :update]

      def index
        @roles = Spree::Role.page(params[:page])
      end

      def destroy
        @role = Spree::Role.find(params[:id])
        @role.destroy

        flash[:success] = Spree.t('notice_messages.role_deleted')

        respond_with(@role) do |format|
          format.html { redirect_to collection_url }
          format.js  { render_js_for_destroy }
        end
      end

      private
        def permitted_resource_params
          params.require(:role).permit!
        end

        def load_permissions
          @permissions = Spree::Permission.visible.all
        end

        def restrict_unless_editable
          redirect_to admin_roles_path unless @role.editable?
        end
    end
  end
end
