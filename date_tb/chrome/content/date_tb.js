window.addEventListener("load", function(e) {
    startup();
}, true);

window.setInterval(
    function() {
        startup();
    }, 6000); //update date every minute

function startup() {
    var myPanel = document.getElementById("my-panel");
    var date = new Date();
    var day = date.getDay();
    var dateString = date.getFullYear() + "年" + (date.getMonth()+1) + "月" + date.getDate()+"日";
    myPanel.label = "时间: " + dateString;
    let someValue = 2;
    let returnValue = { accepted : false , result : "" };

}
