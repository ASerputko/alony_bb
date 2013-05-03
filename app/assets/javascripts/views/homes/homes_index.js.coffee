class Bb.Views.HomesIndex extends Backbone.View

	template: JST['homes/index']

	initialize: ->
		@model = new Bb.Models.Home()
		@model.on("change", @render, @)
		@model.fetch()

	render: ->
		@$el.html(@template(@model.attributes))

	remove: ->
		@$el.remove()
