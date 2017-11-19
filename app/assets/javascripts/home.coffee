ready = ->
    $(".media").on "click", ->
        document.location = $(this).data('target')
        return false

$(document).ready(ready)