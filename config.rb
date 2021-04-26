require 'govuk_tech_docs'

set :haml, { :ugly => true, :format => :html5 }

#set :site_url, "/test-middleman"
# ...
#set :http_prefix, '/test-middleman'

#configure :build do
#  # Relative assets needed to deploy to Github Pages
#  activate :relative_assets
#  #set :relative_links, true
#  #set :site_url, "/test-middleman"
#  #set :http_prefix, '/test-middleman'
#end


configure :build do
  # Generate relative paths to the repo when deploying to GitHub Pages
  config[:http_prefix] = '/local-cyber-support-docs'
  #set :relative_links, true
  #activate :relative_assets
  #config[:css_dir] = ""
  #config[:js_dir] = "/javascripts"
  # activate :minify_css
  # activate :minify_javascript
end



activate :deploy do |deploy|
  deploy.deploy_method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
   deploy.branch   = 'develop' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end
#set :relative_links, true

GovukTechDocs.configure(self)
