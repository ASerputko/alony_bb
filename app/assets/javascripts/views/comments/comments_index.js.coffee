class Bb.Views.CommentsIndex extends Backbone.View

	template: JST['comments/index']

	events: 
		"click #addComment": "addComment"
		"keydown #appendedInputButton": "clickOnEnterButton"

	initialize: ->
		@collection = new Bb.Collections.Comments()
		@collection.on("reset", @addAll, @)
		@collection.on("add", @addOne, @)
		@collection.fetch()

	render: ->
		@$el.html(@template())
		@

	remove: ->
		@$el.empty()

	addAll: ->
		@collection.each(@addOne, @)

	addOne: (model)->
		view = new Bb.Views.CommentsShow(model: model)
		$("#comments_container").prepend(view.render().el)

	addComment: ->
		value = $("#appendedInputButton").val()
		@collection.create({text: value}, {
			success:->
				$("#appendedInputButton").val("")
			error: (msg)->
				console.error(msg)} )

	clickOnEnterButton: (e)->
		if e.keyCode == 13
			 @addComment()