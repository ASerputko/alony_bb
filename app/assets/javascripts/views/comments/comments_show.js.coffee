class Bb.Views.CommentsShow extends Backbone.View

	tagName: "div"

	className: "alert alert-info"

	template: JST['comments/show']

	events: 
		"click .remove": "remove"

	render: ->
		@$el.html(@template(@model.attributes))
		@

	remove: ->
		@model.destroy()
		@$el.remove()