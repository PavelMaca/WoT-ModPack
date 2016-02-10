$(document).ready(function () {
    setSidebarAffix();


    $.getJSON(api_url + '/repos/' + repository_nwo + '/releases', function (result) {
        var lastRelease;
        for (var i in result) {
            if (result[i].prerelease == false && result[i].draft == false && result[i].assets.length > 0) {
                lastRelease = result[i];
                break;
            }
        }

        $('#rls_name').text(lastRelease.name);
        //console.log(lastRelease.name);

        //console.log(lastRelease.published_at);
        var date = new Date(lastRelease.published_at);
        var dateString =
            date.getUTCDate() + "." +
            (date.getUTCMonth() + 1) + ". " +
            ("0" + date.getUTCHours()).slice(-2) + ":" +
            ("0" + date.getUTCMinutes()).slice(-2);
        $('#rls_date').text(dateString);

        //console.log(lastRelease.assets[0].browser_download_url);
        $('#rls_url').attr('href', lastRelease.assets[0].browser_download_url);

        //console.log(lastRelease.assets[0].download_count);
        $('#rls_counter').text(lastRelease.assets[0].download_count);

        //console.log(lastRelease.body);
        var converter = new showdown.Converter();
        var changelog = converter.makeHtml(lastRelease.body);
        //console.log(changelog);
        $('#rls_changelog').html(changelog);
        updateSidebarAffix();
    });
});

function setSidebarAffix(){
    $('#sidebar').affix({
        offset: {
            top: function () {
                return (this.top = $('#srollable-content').position().top - 50)
            }
        }
    });
}

function updateSidebarAffix(){
    $('#sidebar').data('bs.affix').options.offset = $('#srollable-content').position().top - 50;
}

function countDownload(){
    ga('send', {
        hitType: 'event',
        eventCategory: 'Modpack',
        eventAction: 'download',
        eventLabel:  $('#rls_name').text(),
    });
    return true;
}