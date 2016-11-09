// function doSomething(arg) {
//   console.log(arg);
// }

function onChangeHandler(text_box) {
var our_link = document.getElementById("linkme")
  // console.dir(our_link);
  our_link.innerText = this.value;
  // text_box.value = "Hahaha";
};

window.onload = function() {
  // alert("hello");
  var input = document.getElementsByTagName('input')[0];
  input.value = "Enter your favorite word here";

  input.onchange = onChangeHandler;
  
  var our_link = document.getElementById("linkme")
  our_link.onclick = function () {
    console.log(this);
  };
}

// onChange="onChangeHandler(this);"
