#put domain address
if Rails.env == 'production'
    Rails.application.config.session_store :cookie_store, key: '_back_faceplant', domain: 'http://localhost:3000'
else
    Rails.application.confid.session_store :cookie_store, key: '_back_faceplant'
end 
