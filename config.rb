# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "assets/css"
sass_dir = "_dev/css"
images_dir = "img"
javascripts_dir = "js"
fonts_dir = "fonts"

output_style = :nested
sass_options = {:sourcemap => false}
sass_options = {:debug_info => false}
environment = :development

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false
color_output = false

sourcemap = true

# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass

# NOTE: This theme is based on PrestaShop 9 classic-theme, which imports
# Bootstrap/Bourbon through webpack (npm). The supported build is:
#
#   cd _dev && npm install && npm run build
#
# This config.rb is kept for the legacy Compass workflow of the original
# Autozpro theme; Compass cannot resolve the "~bootstrap" imports on its own.
