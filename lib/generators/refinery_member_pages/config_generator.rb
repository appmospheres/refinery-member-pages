require 'rails/generators'

module RefineryMemberPages

    class ConfigGenerator < Rails::Generators::Base

      source_root File.expand_path(File.dirname(__FILE__))

      desc "Copies the required files for adding page protection to refinery"
      def copy_files
        copy_file 'templates/config/members_only.en.yml', 'config/locales/members_only.en.yml'
        copy_file 'templates/config/pages_controller_decorator.rb', 'app/decorators/controllers/refinery/pages_controller_decorator.rb'
        copy_file 'templates/config/page_decorator.rb', 'app/decorators/models/refinery/page_decorator.rb'
        copy_file 'templates/config/_form_advanced_options.html.erb', 'app/views/refinery/admin/pages/_form_advanced_options.html.erb'
        copy_file 'templates/config/_page.html.erb', 'app/views/refinery/admin/pages/_page.html.erb'
      end

    end

end
