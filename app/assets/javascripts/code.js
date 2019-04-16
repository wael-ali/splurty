
window.onclick = function(e) {
    var radioBox = e.target.parentNode.parentNode.parentNode.parentNode;
    var infoColumn = e.target.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.firstElementChild;
    var codeBlock = e.target.parentNode.parentNode.parentNode.parentNode.parentNode;


    console.log(codeBlock);
    console.log(codeBlock.tagName);
    if(radioBox.classList.contains("js-goodbad-radio")){
        hideElement(radioBox);
        codeBlock.classList.remove("col-md-12");
        codeBlock.classList.add("col-md-6");
        if (codeBlock.classList.contains('js-true') === e.target.classList.contains("js-true")){
            codeBlock.lastElementChild.innerHTML = "Right Answer!!";
            codeBlock.lastElementChild.classList.add("alert", "alert-success");
        }else{
            codeBlock.lastElementChild.innerHTML = "Wronge Answer!!";
            codeBlock.lastElementChild.classList.add("alert", "alert-danger");
        }
        codeBlock.lastElementChild.classList.remove("hide");
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