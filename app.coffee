{respond_not_found, respond_storage_file} = require 'rs-util'

module.exports = (app) ->
  {storage} = app
  fetch = app.Model.middleware()

  app.get '/', (req, res) ->
    res.render 'index'

  app.get '/videos/:id.:ext', fetch, (req, res) ->
    {video} = req
    {ext} = req.params
    return respond_not_found res if ext != video.ext()
    key = video.get('storage_key')
    respond_storage_file {req, res, storage, key, mime: video.mime()}

  app.get '/videos/:id', fetch, (req, res) ->
    res.render 'video', {video: req.video}
