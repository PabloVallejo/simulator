
ready = ->

  $('[data-index]').change ->
    attributes = {
      slug: $(this).data('slug')
    }
    index = parseInt($(this).data('index'))

    # Iterate.
    i = index
    while i > 0
      slug = $("[data-index=#{i}]").data('slug')
      attributes["#{slug}"] = $("[data-index=#{i}]").val()
      i--

    console.log(index)
    i = index
    while i <= 18
      i++
      $("[data-index=#{i}] option").remove()

    $.get '/choices', attributes, (data) ->
      $.each data.options, (key, value) ->
        $("[data-index=#{index + 1}]").append $('<option></option>').attr('value', value).text(value)

  $('.export-pdf').on('click', ->
    $(this).text('Generando PDF ...').addClass('disabled');
  )

# Bind to document.ready and 'page:load' from Turbolinks.
$(document).on 'page:load', ready
$(document).ready ready

