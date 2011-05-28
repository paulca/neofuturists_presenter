# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  
  $('div[data-image]').each (item)->
    item = $(item)
    $(@).css('background-image', "url('/assets/" + $(@).attr('data-image') + "')")

  $('a[data-show]') . click ->
    id_to_show = $(@).attr('data-show')
    $("##{id_to_show}").removeClass('hidden').find('img').addClass('on')
    $(@).text('').css('opacity', '0')
    $('#frame').show()
    return false
  
  $('a[id]').click ->
    $(@).addClass('hidden')
    $('#frame').hide()
    return false