json.array!(@gigs) do |gig|
  json.extract! gig, :id, :ville, :departement, :place
  json.url gig_url(gig, format: :json)
end
