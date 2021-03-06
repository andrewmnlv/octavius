Service = require "#{__base}/core/service"
Bower = require 'bower'

class BowerService extends Service
  events:
    'install': 'install'
    'prune': 'prune'

  initialize: ->
    @start()

  install: (callback) ->
    return unless fileExists(__bower)
    Bower.commands.install()

  prune: (callback) ->
    return unless fileExists(__bower)
    Bower.commands
      .prune()
      .on 'end', () ->
        callback()

module.exports = BowerService