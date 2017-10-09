require 'rails_helper'

RSpec.describe 'Articles API', type: :request do
  let(:articles) { create_list(:article, 2) }
  let(:article_id) {articles.first.id}

  describe 'GET /api/articles' do

    before { get "/api/articles/" }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/articles/:id' do

    before { get "/api/articles/#{article_id}" }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/articles' do

    let(:valid_attributes) {{ "article" => { "title" => "Learn Ruby API", "description" => "Some long description that match the rule" }}}

    before { post '/api/articles', params: valid_attributes}

    it 'return status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
