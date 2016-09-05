FactoryGirl.define do
  factory :artist do
    name        "Bob Marley"
    image_path  "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
  end

  # post factory with a `belongs_to` association for the user
  # factory :song do
  #   title "No Woman No Cry"
  #   artist
  # end
end
