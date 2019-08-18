$(function () {
    'use strict';

    $('input[name=personality]').autocomplete({
    	source: '/personalities/search'
    });

    /*
    $('input[name=personality]').on('input', function(event) {
        var search = event.target.value;
        $.ajax({
            url: 'https://fr.wikipedia.org/w/api.php',
            data: {
                format: 'json',
                action: 'query',
                titles: search
            },
            dataType: 'jsonp',
            headers: {
                'Api-User-Agent': 'Pantheon'
            },
            success: function (data) {
                console.log(data)
            }
        });
    });
    */
});