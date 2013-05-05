class Bb.Views.ProjectsShow extends Backbone.View

 	template: JST['projects/show']

 	tagName: "tr"

 	render: ->
 		@$el.html(@template(@model.attributes))
 		@