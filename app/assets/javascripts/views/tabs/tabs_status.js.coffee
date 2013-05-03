class Bb.Views.TabsIndex extends Backbone.View

	events:
		"click li": "clickOnTab"

	initialize: ->
		this.$el = $("#navbar")

	clickOnTab: (event)->
		$("#navbar li").removeClass("active")
		$(event.target).parent("li").addClass("active")
