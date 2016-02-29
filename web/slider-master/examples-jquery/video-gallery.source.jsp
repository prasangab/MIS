<%-- 
    Document   : video-gallery.source
    Created on : Jan 17, 2015, 10:53:04 AM
    Author     : Mr.Mic
--%>
?<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Youtube Video Gallery Slider Example - Jssor Slider, Carousel, Slideshow</title>
</head>
<body style="font-family:Arial, Verdana;background-color:#fff;">
    <!-- it works the same with all jquery version from 1.x to 2.x -->
    <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
    <!-- use jssor.slider.mini.js (40KB) instead for release -->
    <!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
    <script type="text/javascript" src="../js/jssor.js"></script>
    <script type="text/javascript" src="../js/jssor.slider.js"></script>
    <!-- use jssor.slider.player.ytiframe.min.js for release -->
    <script type="text/javascript" src="../js/jssor.player.ytiframe.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var options = {
                $AutoPlay: true,                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $DragOrientation: 3,                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)
                $AutoPlayInterval: 4000,            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1
                $ArrowKeyNavigation: true,   		//[Optional] Allows keyboard (arrow key) navigation or not, default value is false

                $BulletNavigatorOptions: {                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $ActionMode: 1,                 //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                    $AutoCenter: 1,                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Lanes: 1,                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 10,                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 0,                   //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_slider1.$ScaleWidth(Math.min(parentWidth, 640));
                else
                    window.setTimeout(ScaleSlider, 30);
            }

            //Scale slider immediately
            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end

            //fetch and initialize youtube players
            $JssorPlayer$.$FetchPlayers(document.body);
        });
    </script>
    <!-- Jssor Slider Begin -->
    <!-- You can move inline styles to css file or css block. -->
    <div id="slider1_container" style="position: relative; top: 0px; left: 0px; width: 640px; height: 390px;">
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 640px; height: 390px; overflow: hidden;">
            <div>
                <div u="player" style="position: relative; top: 0px; left: 0px; width: 640px; height: 390px; overflow: hidden;">
                    <!-- iframe in ebay page is not allowed, youtube iframe video is not supported for ebay listing -->
                    <iframe width="854" height="510" src="//www.youtube.com/embed/T4NRmBGFTwU" frameborder="0" allowfullscreen></iframe>
                    <!-- play cover begin (optional, can remove play cover) -->
                    <div u="cover" class="videoCover" style="position: absolute; top: 0px; left: 0px; background-color: #000; background-image: url(../img/play.png); background-position: center center; background-repeat: no-repeat; filter: alpha(opacity=40); opacity: .4; cursor: pointer; display: none; z-index: 1;"></div>
                    <!-- play cover end -->
                    <!-- close button begin (optional, can remove close button) -->
                    <style>
                        .closeButton { background-image: url(../img/close.png); }
                        .closeButton:hover { background-position: -30px 0px; }
                    </style>
                    <div u="close" class="closeButton" style="position: absolute; top: 0px; right: 1px; width: 30px; height: 30px; background-color: #000; cursor: pointer; display: none; z-index: 2;">
                    </div>
                    <!-- close button end -->
                </div>
            </div>
            <div>
                <div u="player" style="position: relative; top: 0px; left: 0px; width: 640px; height: 390px; overflow: hidden;">
                    <!-- iframe in ebay page is not allowed, youtube iframe video is not supported for ebay listing -->
                    <iframe width="854" height="510" src="//www.youtube.com/embed/vxeJwhX4O5E" frameborder="0" allowfullscreen></iframe>
                    <!-- play cover begin (optional, can remove play cover) -->
                    <div u="cover" class="videoCover" style="position: absolute; top: 0px; left: 0px; background-color: #000; background-image: url(../img/play.png); background-position: center center; background-repeat: no-repeat; filter: alpha(opacity=40); opacity: .4; cursor: pointer; display: none; z-index: 1;"></div>
                    <!-- play cover end -->
                    <!-- close button begin (optional, can remove close button) -->
                    <style>
                        .closeButton { background-image: url(../img/close.png); }
                        .closeButton:hover { background-position: -30px 0px; }
                    </style>
                    <div u="close" class="closeButton" style="position: absolute; top: 0px; right: 1px; width: 30px; height: 30px; background-color: #000; cursor: pointer; display: none; z-index: 2;">
                    </div>
                    <!-- close button end -->
                </div>
            </div>
            <div>
                <div u="player" style="position: relative; top: 0px; left: 0px; width: 640px; height: 390px; overflow: hidden;">
                    <!-- iframe in ebay page is not allowed, youtube iframe video is not supported for ebay listing -->
                    <iframe width="854" height="510" src="//www.youtube.com/embed/7Ncvjr7DWZY" frameborder="0" allowfullscreen></iframe>
                    <!-- play cover begin (optional, can remove play cover) -->
                    <div u="cover" class="videoCover" style="position: absolute; top: 0px; left: 0px; background-color: #000; background-image: url(../img/play.png); background-position: center center; background-repeat: no-repeat; filter: alpha(opacity=40); opacity: .4; cursor: pointer; display: none; z-index: 1;"></div>
                    <!-- play cover end -->
                    <!-- close button begin (optional, can remove close button) -->
                    <style>
                        .closeButton { background-image: url(../img/close.png); }
                        .closeButton:hover { background-position: -30px 0px; }
                    </style>
                    <div u="close" class="closeButton" style="position: absolute; top: 0px; right: 1px; width: 30px; height: 30px; background-color: #000; cursor: pointer; display: none; z-index: 2;">
                    </div>
                    <!-- close button end -->
                </div>
            </div>
            <div>
                <div u="player" style="position: relative; top: 0px; left: 0px; width: 640px; height: 390px; overflow: hidden;">
                    <!-- iframe in ebay page is not allowed, youtube iframe video is not supported for ebay listing -->
                    <iframe width="854" height="510" src="//www.youtube.com/embed/tQrtIHzPbaA" frameborder="0" allowfullscreen></iframe>
                    <!-- play cover begin (optional, can remove play cover) -->
                    <div u="cover" class="videoCover" style="position: absolute; top: 0px; left: 0px; background-color: #000; background-image: url(../img/play.png); background-position: center center; background-repeat: no-repeat; filter: alpha(opacity=40); opacity: .4; cursor: pointer; display: none; z-index: 1;"></div>
                    <!-- play cover end -->
                    <!-- close button begin (optional, can remove close button) -->
                    <style>
                        .closeButton { background-image: url(../img/close.png); }
                        .closeButton:hover { background-position: -30px 0px; }
                    </style>
                    <div u="close" class="closeButton" style="position: absolute; top: 0px; right: 1px; width: 30px; height: 30px; background-color: #000; cursor: pointer; display: none; z-index: 2;">
                    </div>
                    <!-- close button end -->
                </div>
            </div>
        </div>
 
        <!-- Bullet Navigator Skin Begin -->
        <style>
            /* jssor slider bullet navigator skin 03 css */
            /*
            .jssorb03 div           (normal)
            .jssorb03 div:hover     (normal mouseover)
            .jssorb03 .av           (active)
            .jssorb03 .av:hover     (active mouseover)
            .jssorb03 .dn           (mousedown)
            */
            .jssorb03 div, .jssorb03 div:hover, .jssorb03 .av
            {
                background: url(../img/b03.png) no-repeat;
                overflow:hidden;
                cursor: pointer;
            }
            .jssorb03 div { background-position: -5px -4px; }
            .jssorb03 div:hover, .jssorb03 .av:hover { background-position: -35px -4px; }
            .jssorb03 .av { background-position: -65px -4px; }
            .jssorb03 .dn, .jssorb03 .dn:hover { background-position: -95px -4px; }
        </style>
        <!-- bullet navigator container -->
        <div u="navigator" class="jssorb03" style="position: absolute; bottom: 6px; left: 6px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype" style="POSITION: absolute; WIDTH: 21px; HEIGHT: 21px; text-align:center; line-height:21px; color:White; font-size:12px;"><div u="numbertemplate"></div></div>
        </div>
        <!-- Bullet Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">Image Slider</a>
    </div>
    <!-- Jssor Slider End -->
</body>
</html>