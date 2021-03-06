#= require views/pages/base

class app.views.JavascriptPage extends app.views.BasePage
  prepare: ->
    @highlightCode @findAllByTag('pre'), 'javascript'
    return

class app.views.JavascriptWithMarkupCheckPage extends app.views.BasePage
  prepare: ->
    for el in @findAllByTag('pre')
      language = if el.textContent.match(/^\s*</)
        'markup'
      else
        'javascript'
      @highlightCode el, language
    return

app.views.GruntPage =
app.views.JavascriptPage

app.views.DojoPage =
app.views.RequirejsPage =
app.views.JavascriptWithMarkupCheckPage
