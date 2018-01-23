class Product
  constructor: (name, info) ->
    @name = name
    @info = info
    @view = document.createElement 'div'
    @view.className = "product"
    document.body.appendChild @view
    @view.onclick = =>
        @purchase()
    @render()

  render: ->
    renderInfo = (key,val) ->
      "<div>#{key}: #{val}</div>"
    displayInfo = (renderInfo(key, val) for own key, val of @info)
    @view.innerHTML = "#{@name} #{displayInfo.join ''}"

  purchase: ->
    if @info.stock > 0
      post "/json/purchase/#{@purchaseCategory}/#{@name}", (res) =>
        if res.status is "success"
          @info = res.update
          @render()

