class Bb.Routers.Tabs extends Backbone.Router

	initialize: ->
		@currentController = {}

	routes:
		"": "home"
		"home": "home"
		"projects": "projects"
		"services": "services"
		"downloads": "downloads"
		"about": "about"
		"contact": "contact"

	runController: (Controller)->
		unless @currentController instanceof Controller
			@currentController.remove && @currentController.remove()
			@currentController = new Controller(el: $("#jumbotron"))
			
		@currentController.render()

	home: ->
		@runController Bb.Views.HomesIndex

	projects: ->
		console.log("projects")

	services: ->
		console.log("services")

	downloads: ->
		console.log("downloads")

	about: ->
		console.log("about")

	contact: ->
		console.log("contact")


