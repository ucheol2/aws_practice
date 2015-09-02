Rails.application.routes.draw do
  
  root :to => 'stacklion#input'
  get 'stand/grey'
  get 'stand/white'
  
  get 'kichen/pot'
  get 'kichen/stoll'
  
  get 'stacklion/input'
  get 'stacklion/output'
  
  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'
  
end
