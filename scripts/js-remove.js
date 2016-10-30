
function jsRemove() {
  var jsremoves = document.getElementsByClassName("js-remove"), i;
  for (i = 0; i < jsremoves.length; ++i) {
    jsremoves[i].style = "display: none;";
  }
  if (prevload) prevload();
};

