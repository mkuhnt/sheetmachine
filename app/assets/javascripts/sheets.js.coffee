# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  init_container $('#root_container')

  $('#start_container').on 'pjax:end', (e, xhr, err) ->
    alert('start_container pjax:end')
    $('#root_container').children('.path').show()
    $('#root_container').children('.content').hide()
    $('#root_container').children('.sheet_container').show()
    

init_container = (container) ->
  $('a', container).pjax("#{container.selector} > .sheet_container")
  url = document.URL
  $("#{container.selector} > .path").hide().click ->
    alert(url)
    $.pjax( {url: url, container: container.selector })
