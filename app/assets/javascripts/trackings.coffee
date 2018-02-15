# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$(document).on 'change', '#gloabl_dropdown', (evt) ->
    	$.ajax 'update_trackings?page_url='+encodeURIComponent($("#gloabl_dropdown option:selected").text()),
      		type: 'GET'
			dataType: 'script'
			data: { page_url: encodeURIComponent($("#gloabl_dropdown option:selected").text()) }
			error: (jqXHR, textStatus, errorThrown) ->
				console.log("AJAX Error: #{textStatus}")
			success: (data, textStatus, jqXHR) ->
				console.log("Dynamic country select OK!")