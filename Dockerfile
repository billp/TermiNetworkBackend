# Use an official Ruby base image
FROM ruby:3.1.0

# Install Node.js and Yarn
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y build-essential libpq-dev nodejs yarn

# Set environment variables
ENV RAILS_ENV=production \
    RAILS_LOG_TO_STDOUT=true

# Set working directory
WORKDIR /app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install --without development test

# Copy the rest of the application code
COPY . .

# Precompile assets for production
RUN bundle exec rake assets:precompile

# Expose port 3000 for the app
EXPOSE 3000

# Start the server
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
