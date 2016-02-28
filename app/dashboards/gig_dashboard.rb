require "administrate/base_dashboard"

class GigDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    ville: Field::String,
    departement: Field::String,
    place: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    days: Field::String,
    monts: Field::String,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :ville,
    :departement,
    :place,
    :monts,
    :days,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :ville,
    :departement,
    :place,
    :created_at,
    :updated_at,
    :monts,
    :days,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :ville,
    :departement,
    :place,
    :monts,
    :days,
  ]

  # Overwrite this method to customize how gigs are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(gig)
  #   "Gig ##{gig.id}"
  # end
end
