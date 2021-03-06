require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# mount controllers 

use Rack::MethodOverride

use LikesController
use BooksController
use UsersController
run ApplicationController
