# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery(document).on 'turbolinks:load', ->
  if $('.our-players').length
    $('.header-top')
  else
    $('.header-top').attr('style', 'background-size: cover')

