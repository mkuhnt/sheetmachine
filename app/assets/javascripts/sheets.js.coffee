# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

hideSheet = ->
  $("#cont_2").hide()
  $("#cont_1").children(".path").first().hide()
  $("#cont_1").children(".content").first().show()

showSheet = ->
  $("#cont_1").children(".path").first().show()
  $("#cont_1").children(".content").first().hide()
  $("#cont_2").children(".path").first().hide()
  $("#cont_2").show()

@app = window.app ? {}
@app.hideSheet = hideSheet
@app.showSheet = showSheet
