# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  init_container $("#root_container")
  $("#root_container").on 'pjax:end', (e, xhr, err) ->
    init_container $("#root_container")

init_container = (container) ->
  cont_sel = container.selector

  # flag all links within the content div to be pjax
  $("#{cont_sel} > .content a").pjax("#{container.selector} > .sheet_container")
  url = document.URL
  
  # connect the path back to the current site
  $("#{cont_sel} > .path").hide().click ->
    $.pjax( {url: url, container: container.selector })

  # register callback upon load of embedded sheet
  $("#{container.selector} > .sheet_container").on 'pjax:end', (e, xhr, err) ->
    $("#{container.selector} > .path").show()
    $("#{container.selector} > .content").hide()
    $("#{container.selector} > .sheet_container").show()
    init_container $("#{container.selector} > .sheet_container")
    e.stopPropagation()

