window.addEventListener("message", function(event) {
    if (event.data.action === "show") {
        document.getElementById("blindfold").style.display = "block";
    } else if (event.data.action === "hide") {
        document.getElementById("blindfold").style.display = "none";
    }
});
