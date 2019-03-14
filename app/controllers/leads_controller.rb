class LeadsController < ApplicationController
    def index
        @leads = Lead.all
    end

    def new 
        @lead = Lead.new
    end

    def create
        lead = Lead.new(lead_params)
        lead.user_id = current_user.id
        if lead.save
            flash[:notice] = "Lead Saved!"
            redirect_to lead
        else
            flash[:error] = "Lead didn't save!"
            redirect_to leads_path
        end
    end

    def show
        @lead = Lead.find(params[:id])
    end

    def edit
        @lead = Lead.find(params[:id])
    end

    def update 
        lead = Lead.find(params[:id])
        lead.update(lead_params)
        redirect_to lead
        flash[:success] = "Your lead was edited!"
    end
    
    def destroy 
        lead = Lead.find(params[:id])
        lead.destroy
        redirect_to leads_path
    end

    private
    def lead_params
        params[:lead].permit(
            :company, 
            :industry,
            :industry_desc,
            :g_email_1,
            :g_email_2,
            :g_phone_1,
            :g_phone_2,
            :gkeeper_name,
            :dm_phone,
            :dm_email
        )
    end
end
