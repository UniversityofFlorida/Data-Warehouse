$(function () {
    // Error for file protocol.
    if (location.protocol === 'file:') {
        var popup = $('#popup-error');
        popup.append(document.createElement("br"));
        popup.append(document.createElement("br"));
        popup.append('file:// protocol may not be supported by this browser.');
        popup.append(document.createElement("br"));
        popup.append('Please try using “Local disk (single file)” template for HTML export or use another browser.');
    }

    // #left resizable horizontaly
    var tmpWidth;
    $("#main .resizable-left").resizable({
        
        minWidth: 250,
        maxWidth: 600,
        handles: 'e',
        
        resize: function( event, ui ) {
            
            $('.resizable-right').css('margin-left', $(this).width() + 1 );
            
        },
        
    });
    	        
    // Ajax windows size
    var mainContentHeight = function() {
        var height = $(window).height();
        height -= $('#nav').is(':visible') ? $('#nav').outerHeight() : 0;
        height -= $('#footer').is(':visible') ? $('#footer').outerHeight() : 0;
        return height;
    }

    $(document).ready( function() {
        $(window).trigger('hashchange');
    });
    	        
    // #nav a - mark active bookmark
    $('#nav').on('click', 'a', function() {
        
        $('#nav a').removeClass('active');
        $(this).addClass('active');
        
    });

    // Mark active link
    var clicked_href = '';
    var firstHrefCounter = 1;

    $(document).on('click', 'a[data-target="#right"]', function() {
        $('a[href="'+ clicked_href +'"]').removeClass('clicked');
        
        clicked_href = $(this).attr('href');
        $('a[href="'+ clicked_href +'"]').addClass('clicked');
    });

    // Handle event which occurs when hash in the link change
    $(window).on('hashchange', function(e) {
        //console.log(e.originalEvent.newURL.split('#')[1], e.originalEvent.oldURL.split('#')[1]);
        var relativeUrl = window.location.hash;
        if(relativeUrl.indexOf('%') < 0)
            relativeUrl = encodeURI(relativeUrl);

        if (relativeUrl.length > 0) {
            $('a[data-target="#right"][href="' + relativeUrl + '"]').first().click();
        }
        else if ($('#left ul.tree > li > ul > li').size() == 1) {
            var firstRepository = $('#left .tree a[data-target="#right"]').first();
            firstRepository.click();
            if (firstRepository.parent().siblings().length == 0) {
                firstRepository.siblings('ul').show();
                firstRepository.parent().addClass('narrow').removeClass('expand');
            }
        }
        else {
            $('a[href="#index"]').click();
        }
    });

    // Font size
    var fontSizeClassName = store.get('font-size', 'font-size-medium');
    $('body').removeClass('font-size-medium').addClass(fontSizeClassName);

    $(window).bind('content-reloaded', function() {
        $('#tools .font-size a').click(function() {
            var className = $(this).data('class');

            store.set('font-size', className);
            $('body').removeClass('font-size-small')
                .removeClass('font-size-medium')
                .removeClass('font-size-large')
                .addClass(className);
        });
    });
});