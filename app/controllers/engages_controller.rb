class EngagesController < ApplicationController
     def new
        @lead = Lead.find(params[:lead_id])
        @engage = Engage.new
    end

    def create
        engage = Engage.new
        engage.user_id = current_user.id 
        engage.lead_id = params[:lead_id]
        # byebug
        if engage.save 
            flash[:notice] = "Engage Saved!"
            redirect_to lead_path(params[:lead_id])
        else
            flash[:notice] = "Engage Failed to Save!"
            redirect_to leads_path
        end
    end

    def destroy 
        engage = Engage.find_by(lead_id: params[:lead_id], user_id: params[:id])
        engage.destroy
        flash[:notice] = "Engage Removed"
        redirect_to lead_path(params[:lead_id])
    end
end
