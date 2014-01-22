_ = require 'underscore'
{Model} = require './model'

class Video extends Model

  ext: () ->
    _.last @get('storage_key').split('.')

  video_path: () ->
    "#{@path()}.#{@ext()}"

  mime: () ->
    MIME_TYPES_BY_EXT[@ext()] or 'application/octet-stream'


MIME_TYPES_BY_EXT = {
  mp4: 'video/mp4'
  webm: 'video/webm'
  ogg: 'video/ogg'
  ogv: 'video/ogg'
}


module.exports = {Video}
