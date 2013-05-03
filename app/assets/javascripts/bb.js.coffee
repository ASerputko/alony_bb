window.Bb =
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}

$(document).ready ->
 	new Bb.Routers.Tabs()
 	new Bb.Views.TabsIndex()
 	Backbone.history.start()
