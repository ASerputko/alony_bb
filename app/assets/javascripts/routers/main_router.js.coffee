class Bb.Routers.Main extends Backbone.Router

	initialize: ->
		@currentController = {}

	routes:
		"": "home"
		"home": "home"
		"projects": "projects"
		"comments": "comments"

	runController: (Controller, name)->
		@activateTab(name)
		unless @currentController instanceof Controller
			@currentController.remove && @currentController.remove()
			@currentController = new Controller(el: $("#jumbotron"))
		
		@currentController.render()

	activateTab: (name)->
		$("#navbar li").removeClass("active")
		$("#tab_" + name).addClass("active")

	home: ->
		@runController Bb.Views.HomesIndex, "home"

	projects: ->
		@runController Bb.Views.ProjectsIndex, "projects"

	comments: ->
		@runController Bb.Views.CommentsIndex, "comments"