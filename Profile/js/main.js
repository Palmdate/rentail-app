$(document).ready(function () {
    /*
      Main navigation
    */

    var burger = $('.burger');
    var burgerSpan = $('.burger > span');
    var nav = $('.main-nav .left');
    var overlay = $('.overlay');
    var isOpened = false;
    

    function toggleMenu() {
        if (isOpened === false) {
            isOpened = true;
            burger.addClass("close");
            nav.css({'right': '0px'});
            overlay.css({'display': 'block'});
        } else {
            isOpened = false;
            burger.removeClass("close");
            nav.css({'right': '-320px'});
            overlay.css({'display': 'none'});
        }
    }

    $(burger).on('click', toggleMenu);
    $(overlay).on('click', toggleMenu);


    // Select action
    
    $('select').each(function(){
        var $this = $(this), numberOfOptions = $(this).children('option').length;
        
        $this.addClass('select-hidden'); 
        $this.wrap('<div class="select"></div>');
        $this.after('<div class="select-styled"></div>');

        var $styledSelect = $this.next('div.select-styled');
        $styledSelect.text($this.children('option').eq(0).text());
        
        var $list = $('<ul />', {
            'class': 'select-options'
        }).insertAfter($styledSelect);
        
        for (var i = 0; i < numberOfOptions; i++) {
            $('<li />', {
                text: $this.children('option').eq(i).text(),
                rel: $this.children('option').eq(i).val()
            }).appendTo($list);
        }
        
        var $listItems = $list.children('li');
        
        $styledSelect.click(function(e) {
            e.stopPropagation();
            $('div.select-styled.active').not(this).each(function(){
                $(this).removeClass('active').next('ul.select-options').hide();
            });
            $(this).toggleClass('active').next('ul.select-options').toggle();
        });
        
        $listItems.click(function(e) {
            e.stopPropagation();
            $styledSelect.text($(this).text()).removeClass('active');
            $this.val($(this).attr('rel'));
            $list.hide();
            //console.log($this.val());
        });
        
        $(document).click(function() {
            $styledSelect.removeClass('active');
            $list.hide();
        });

    });

});
