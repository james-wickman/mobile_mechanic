                      Prefix Verb   URI Pattern                        Controller#Action
             mechanics_index GET    /mechanics/index(.:format)         mechanics#index
              mechanics_show GET    /mechanics/show(.:format)          mechanics#show
                  home_index GET    /home/index(.:format)              home#index
                 users_index GET    /users/index(.:format)             users#index
                  users_show GET    /users/show(.:format)              users#show
        new_mechanic_session GET    /mechanics/sign_in(.:format)       mechanics/sessions#new
            mechanic_session POST   /mechanics/sign_in(.:format)       mechanics/sessions#create
    destroy_mechanic_session DELETE /mechanics/sign_out(.:format)      mechanics/sessions#destroy
       new_mechanic_password GET    /mechanics/password/new(.:format)  devise/passwords#new
      edit_mechanic_password GET    /mechanics/password/edit(.:format) devise/passwords#edit
           mechanic_password PATCH  /mechanics/password(.:format)      devise/passwords#update
                             PUT    /mechanics/password(.:format)      devise/passwords#update
                             POST   /mechanics/password(.:format)      devise/passwords#create
cancel_mechanic_registration GET    /mechanics/cancel(.:format)        mechanics/registrations#cancel
   new_mechanic_registration GET    /mechanics/sign_up(.:format)       mechanics/registrations#new
  edit_mechanic_registration GET    /mechanics/edit(.:format)          mechanics/registrations#edit
       mechanic_registration PATCH  /mechanics(.:format)               mechanics/registrations#update
                             PUT    /mechanics(.:format)               mechanics/registrations#update
                             DELETE /mechanics(.:format)               mechanics/registrations#destroy
                             POST   /mechanics(.:format)               mechanics/registrations#create
            new_user_session GET    /users/sign_in(.:format)           users/sessions#new
                user_session POST   /users/sign_in(.:format)           users/sessions#create
        destroy_user_session DELETE /users/sign_out(.:format)          users/sessions#destroy
           new_user_password GET    /users/password/new(.:format)      devise/passwords#new
          edit_user_password GET    /users/password/edit(.:format)     devise/passwords#edit
               user_password PATCH  /users/password(.:format)          devise/passwords#update
                             PUT    /users/password(.:format)          devise/passwords#update
                             POST   /users/password(.:format)          devise/passwords#create
    cancel_user_registration GET    /users/cancel(.:format)            users/registrations#cancel
       new_user_registration GET    /users/sign_up(.:format)           users/registrations#new
      edit_user_registration GET    /users/edit(.:format)              users/registrations#edit
           user_registration PATCH  /users(.:format)                   users/registrations#update
                             PUT    /users(.:format)                   users/registrations#update
                             DELETE /users(.:format)                   users/registrations#destroy
                             POST   /users(.:format)                   users/registrations#create
                        root GET    /                                  home#index
