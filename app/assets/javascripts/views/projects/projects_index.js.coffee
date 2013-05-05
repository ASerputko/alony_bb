class Bb.Views.ProjectsIndex extends Backbone.View

 	template: JST['projects/index']

 	initialize: ->
 		@collection = new Bb.Collections.Projects()
 		@collection.on("sync", @addAll, @)
 		@collection.fetch()

 	addAll: ->
 		@collection.each(@addOne, @)

 	addOne: (model)->
 		view = new Bb.Views.ProjectsShow(model: model)
 		$("#project_table").append(view.render().el)

 	render: ->
 		@$el.html(@template())

 	remove: ->
 		@$el.empty()