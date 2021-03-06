# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::Migration do
  let(:client) { Slack::Web::Client.new }
  context 'migration_exchange' do
    it 'requires users' do
      expect { client.migration_exchange }.to raise_error ArgumentError, /Required arguments :users missing/
    end
  end
end
