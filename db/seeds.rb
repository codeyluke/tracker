# Seed Users
ActiveRecord::Base.transaction do    
    user1 = User.create(
        email:'luke@mail.com', 
        first_name: "luke",
        last_name: "sia",
        phone_number: "60123451234",
        password: "123"
    )
    user2 = User.create(
        email:'jack@mail.com', 
        first_name: "jack",
        last_name: "lee",
        phone_number: "60120981234",
        password: "123"
    )
    user3 = User.create(
        email:'john@mail.com', 
        first_name: "john",
        last_name: "lee",
        phone_number: "60123409834",
        password: "123"
    )
end 

# Seed Leads
ActiveRecord::Base.transaction do 
    lead1 = Lead.create(
        business_name: "Jobbie",
        company_name: "Jobbie S/B",
        industry: "eCommerce",
        industry_desc: "Selling Peanut Butters",
        gkeeper_name: "Jordan Butter",
        g_email_1: "jobbie@mail.com",
        g_phone_1: "60312344321",
        dm_name: "Jobbie",
        dm_phone: "60172341234",
        user_id: "1"
    )
    lead2 = Lead.create(
        business_name: "Cloud Union",
        company_name: "Cloud Union Technology S/B",
        industry: "eCommerce",
        industry_desc: "Selling all kinds of products",
        gkeeper_name: "Pamelo",
        g_email_1: "jianyang@mail.com",
        g_phone_1: "603123214321",
        dm_name: "Jian Yang",
        dm_phone: "60172341234",
        user_id: "2"
    ) 
    lead3 = Lead.create(
        business_name: "Garment Rack",
        company_name: "Clothing Rack S/B",
        industry: "Retail",
        industry_desc: "Selling racks",
        gkeeper_name: "Christy",
        g_email_1: "jianyang@mail.com",
        g_phone_1: "603123214321",
        dm_name: "Jian Yang",
        dm_phone: "60172341234",
        user_id: "3"
    ) 
end