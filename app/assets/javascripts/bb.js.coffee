window.Bb =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}

$(document).ready ->
 	new Bb.Routers.Main()
 	Backbone.history.start()
