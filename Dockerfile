# Local preview image for the Jekyll site.
# Ruby 3.3 matches what GitHub Pages runs; the UTF-8 locale is required or the
# old Sass converter bundled with github-pages fails on theme files.
FROM ruby:3.3

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

WORKDIR /site

# Install gems in a separate layer so they're cached unless the Gemfile changes.
# Gems land in /usr/local/bundle, so the source bind-mount at runtime won't hide them.
COPY Gemfile Gemfile.lock ./
RUN bundle install

EXPOSE 4000 35729

# --host 0.0.0.0 makes it reachable from your machine; polling makes live reload
# work reliably across the Docker bind mount (host file events don't always cross it).
CMD ["bundle", "exec", "jekyll", "serve", \
     "--host", "0.0.0.0", \
     "--livereload", \
     "--force_polling"]
