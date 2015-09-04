$(document).ready(function(){
    $('#sidebar').affix({
        offset: {
            top: function () {
                return (this.top = $('#srollable-content').position().top - 50)
            }
        }
    })
});