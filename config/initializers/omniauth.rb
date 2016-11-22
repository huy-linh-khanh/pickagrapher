Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'zz5iEP6N5yiTjHB6FUgsdAjb7', 'xBb5FJ5bc4DMHkWrqdh9cfXkYlcSAdVkUZdRzkcGfoEtGjUXUe'
  provider :facebook, '1441118245899141', 'e8dd90f2c0207d632a6c8adea7147299',
    scope: 'email', info_fields: 'email,name'

  OmniAuth.config.on_failure = -> (env) do
    Rack::Response.new(['302 Moved'], 302, 'Location' => env['omniauth.origin'] || "/").finish
  end
end
