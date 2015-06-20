require "bundler/gem_tasks"

namespace :images do
  image_files = []
  Dir.glob('DataTables/media/images/*.png') do |src_file|
    src_filename = File.basename(src_file)
    tgt_file = "app/assets/images/datatables/#{src_filename}"

    file tgt_file => src_file do
      cp src_file, tgt_file
    end

    image_files.push tgt_file
  end

  desc "Delete images"
  task :clean do
    Dir.glob('app/assets/images/datatables/*.png') do |file|
      File.delete(file)
    end
  end

  desc "Copy images from DataTables/media/images/"
  task copy: image_files

  desc "Setup image assets"
  task setup: [:clean, :copy]
end

namespace :javascripts do
  src_file = "DataTables/media/js/jquery.dataTables.js"
  tgt_file = "app/assets/javascripts/datatables/jquery_datatables.js"
  file tgt_file => src_file do
      cp src_file, tgt_file
  end

  desc "Copy DataTables/media/js/jquery.dataTables.js"
  task copy: tgt_file

  desc "Setup javascript assets"
  task setup: :copy
end

namespace :stylesheets do
  files = {
    "DataTables/media/css/jquery.dataTables.css" => "app/assets/stylesheets/datatables/jquery_datatables.css.scss",
    "DataTables/media/css/jquery.dataTables_themeroller.css" => "app/assets/stylesheets/datatables/jquery_datatables_themeroller.css.scss"
  }
  files.keys.each do |src_file|
    tgt_file = files[src_file]
    file tgt_file => src_file do
        cp src_file, tgt_file
    end
  end

  desc "Copy DataTables/media/css/jquery.dataTables.scss"
  task copy: files.values

  desc "Fix image URLs in stylesheets"
  task :fix_urls do
    files.values.each do |tgt_file|
      content = File.read(tgt_file)
      fixed_content = content.gsub(/url\(\"\.\.\/images\/([A-Za-z_]*.png)\"\)/, 'image-url("\1")')
      File.open(tgt_file, "w") { |f| f.puts fixed_content}
    end
  end

  desc "Setup stylesheet assets"
  task setup: [:copy, :fix_urls]
end

desc "Setup asset files"
task setup: ["images:setup", "javascripts:setup", "stylesheets:setup"]
