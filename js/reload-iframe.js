onVisible = function(element, callback) {
  var options = {
    root: document.documentElement
  }

  var observer = new IntersectionObserver((entries, observer) => {
    entries.forEach(entry => {
      callback(entry.intersectionRatio > 0);
    });
  }, options);

  observer.observe(element);
}

reloadOnVisible = function(element) {
  onVisible(document.getElementById(element), visible => {
    if(visible) {
    	document.getElementById(element).src = document.getElementById(element).src;
     }
  });
}