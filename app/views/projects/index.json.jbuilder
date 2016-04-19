json.array!(@projects) do |project|
  json.extract! project, :id, :name, :client, :site_url, :description, :image, :public_repo, :creation_date
  json.url project_url(project, format: :json)
end
