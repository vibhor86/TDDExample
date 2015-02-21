require 'spec_helper'

describe API::V1::Authors, type: :request do
  it "returns all authors" do
    get '/api/v1/authors'
    expect(response.status).to eq 200
    expect(response.body).to eq([].to_json)
  end
end