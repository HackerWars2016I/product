json.array!(@mocks) do |mock|
  json.extract! mock, :id
  json.url mock_url(mock, format: :json)
end
