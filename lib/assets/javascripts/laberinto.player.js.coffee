$ ->
  $('.jplayer').jPlayer
    ready: ->
      $(this).jPlayer 'setMedia',
        mp3: '<%= Yetting.shoutcast %>'
      return
    swfPath: 'assets/jquery.jplayer/'
    solution: 'flash,html'
    supplied: 'mp3'
    preload: 'none'
    cssSelectorAncestor: '.jaudio'
    cssSelector:
      play: '.play'
      pause: '.pause'
      noSolution: '.no-solution'
  return