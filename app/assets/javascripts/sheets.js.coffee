# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('#root_container a').pjax('#start_container')
  $('#root_container').live 'pjax:end', (e, xhr, err) ->
    $('#root_container .path').show()
    $('#root_container .path').click ->
      $.pjax( {url: '/sheets', container: '#page_container' } ) 
    $('#root_container .content').hide()
    $('#root_container').children('.sheet_container').show()
    
