require 'spec_helper'

describe API::V1::Posts, type: :request do
  it "returns all posts" do
    get '/api/v1/posts'
    expect(response.status).to eq 200
    expect(response.body).to eq([].to_json)
  end
end