// document.addEventListener('click', function(e) {
//     e = e || window.event;
//     var target = e.target || e.srcElement,
//         text = target.textContent || target.innerText;   
// }, false);

// Window.onclick = e => {
//     console.log(e.target);
//     console.log(e.target.tagName);
// }

window.onclick = e => {
    var radioBox = e.target.parentNode.parentNode.parentNode.parentNode;
    var infoColumn = e.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.firstElementChild;
    var codeBlock = e.target.parentNode.parentNode.parentNode.parentNode.parentNode;


    console.log(codeBlock);
    console.log(codeBlock.tagName);
    if(radioBox.classList.contains("js-goodbad-radio")){
        hideElement(radioBox);
        codeBlock.classList.remove("col-md-12");
        codeBlock.classList.add("col-md-6");
    }

    if(infoColumn.classList.contains("js-info-col")){
        showElement(infoColumn);
    }

} 

document.getElementsByClassName("js-bad");

function hideElement(el){
    el.classList.add("hide");
}
function showElement(el){
    el.classList.remove("hide");
}


