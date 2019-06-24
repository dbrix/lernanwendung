class Benutzer < ApplicationRecord
  has_many :fachmoduls
  validates :mail, presence: true, uniqueness: true
#  <%= select_tag :benutzer, options_from_collection_for_select(@benutzer,'id','name') %>
  #<%= select_tag(:benutzer_id, options_for_select(
#  @benutzer || Benutzer.all.map { |c| [ c.name, c.id ] }), :prompt => "Select one!") %>
#  <%= select tag :benutzer_id, options_from_collection_for_select(@benutzer.where(ansprechpartner: true), 'id', 'name') %>
#<%= select_tag(:benutzer_id, options_from_collection_for_select(
#Benutzer.all.where(ansprechpartner: true), :id, :name)
#, include_blank: "Wähle Ansprechpartner*in")%>
end
