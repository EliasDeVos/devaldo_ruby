# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery(document).on 'turbolinks:load', ->
  if $('.our-players').length
    $('.header-top').attr('style', 'background: url(../images/g2.jpg)0px -80px; min-height: 730px;background-size: cover')
  else
    $('.header-top').attr('style', 'background-size: cover')

