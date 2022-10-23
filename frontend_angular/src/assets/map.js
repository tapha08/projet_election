var map = document.querySelector('#map')
var paths = map.querySelectorAll('.map__image a')
var links = map.querySelectorAll('.map__list a')



paths.forEach(function(path){
  path.addEventListener('mouseenter', function(e){
    console.log('Salut')
  })
})
