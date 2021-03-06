 Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'simulator#index'

  resources :simulator do

    # Step two.
    post 'step-two', action: 'step_two'
    get 'step-two', action: 'step_two'

    # Step three.
    post 'step-three', action: 'step_three'
    get 'step-three', action: 'step_three'
  end

  # Get simulator options.
  get 'choices', to: 'simulator#choices'

end
