// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
// test auto-ready logic - call corner before DOM is ready
$('#readyTest').corner();

$(function(){
$('#dynCorner').click(function() {
	$('#dynamic').corner();
});
$('#dynUncorner').click(function() {
	$('#dynamic').uncorner();
});

    $('div.inner').wrap('<div class="outer"></div>');
    $('p').wrap("<code></code>");

    $('div.demo, div.inner').each(function() {
        var t = $('p', this).text();
        eval(t);
    });

    // fixed/fluid tests
    $("div.box").corner("keep");
    $("#abs").corner("cc:#08e");
});
