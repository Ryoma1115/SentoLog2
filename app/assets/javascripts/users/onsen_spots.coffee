# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#onsen_spot_postcode").jpostal({
    postcode : [ "#onsen_spot_postal_code" ],
    address  : {
                  "#onsen_spot_prefecture_code" : "%3",
                  "#onsen_spot_address_city"            : "%4",
                  "#onsen_spot_address_street"          : "%5%6%7"
                }
  })