/**
 * @version		$Id: k2.js 1034 2011-10-04 17:00:00Z joomlaworks $
 * @package		K2
 * @author		JoomlaWorks http://www.joomlaworks.gr
 * @copyright	Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.
 * @license		GNU/GPL license: http://www.gnu.org/copyleft/gpl.html
 */

var $K2 = jQuery.noConflict();

$K2(document).ready(function(){

	// Comments
	$K2('#comment-form').submit(function(event){
		event.preventDefault();
		$K2('#formLog').empty().addClass('formLogLoading');
		$K2.ajax({
			url: $K2('#comment-form').attr('action'),
			type: 'post',
			dataType: 'json',
			data: $K2('#comment-form').serialize(),
			success: function(response){
				$K2('#formLog').removeClass('formLogLoading').html(response.message);
				if(typeof(Recaptcha) != "undefined"){
					Recaptcha.reload();
				}
				if (response.refresh) {
					window.location.reload();
				}
			}
		});
	});
	
	$K2('.commentRemoveLink').click(function(event){
		event.preventDefault();
		var element = $K2(this);
		$K2(element).parent().addClass('commentToolbarLoading');
		$K2.ajax({
			url: $K2(element).attr('href'),
			type: 'post',
			data: $K2('#comment-form input:last').serialize(),
			success: function(response){
				$K2(element).parent().removeClass('commentToolbarLoading');
				if(response=='true'){
					$K2(element).parent().parent().remove();
				}
			}
		});
	});
	
	$K2('.commentApproveLink').click(function(event){
		event.preventDefault();
		var element = $K2(this);
		$K2(element).parent().addClass('commentToolbarLoading');
		$K2.ajax({
			url: $K2(element).attr('href'),
			type: 'post',
			data: $K2('#comment-form input:last').serialize(),
			success: function(response){
				$K2(element).parent().removeClass('commentToolbarLoading');
				if(response=='true'){
					$K2(element).parent().parent().removeClass('unpublishedComment');
				}
			}
		});
	});
	
	$K2('#k2ReportCommentForm').submit(function(event){
		event.preventDefault();
		$K2('#formLog').empty().addClass('formLogLoading');
		$K2.ajax({
			url: $K2('#k2ReportCommentForm').attr('action'),
			type: 'post',
			data: $K2('#k2ReportCommentForm').serialize(),
			success: function(response){
				$K2('#formLog').removeClass('formLogLoading').html(response);
				if(typeof(Recaptcha) != "undefined"){
					Recaptcha.reload();
				}
			}
		});
	});

	// Text Resizer
	$K2('#fontDecrease').click(function(event){
		event.preventDefault();
		$K2('.itemFullText').removeClass('largerFontSize');
		$K2('.itemFullText').addClass('smallerFontSize');
	});
	$K2('#fontIncrease').click(function(event){
		event.preventDefault();
		$K2('.itemFullText').removeClass('smallerFontSize');
		$K2('.itemFullText').addClass('largerFontSize');
	});

	// Smooth Scroll
	$K2('.k2Anchor').click(function(event){
		event.preventDefault();
		var target = this.hash;
		$K2('html, body').stop().animate({
			scrollTop: $K2(target).offset().top
		}, 500);
	});

	// Rating
	$K2('.itemRatingForm a').click(function(event){
		event.preventDefault();
		var itemID = $K2(this).attr('rel');
		var log = $K2('#itemRatingLog' + itemID).empty().addClass('formLogLoading');
		var rating = $K2(this).html();
		$K2.ajax({
			url: K2SitePath+"index.php?option=com_k2&view=item&task=vote&user_rating=" + rating + "&itemID=" + itemID,
			type: 'get',
			success: function(response){
				log.removeClass('formLogLoading');
				log.html(response);
				$K2.ajax({
					url: K2SitePath+"index.php?option=com_k2&view=item&task=getVotesPercentage&itemID=" + itemID,
					type: 'get',
					success: function(percentage){
						$K2('#itemCurrentRating' + itemID).css('width', percentage + "%");
						setTimeout(function(){
							$K2.ajax({
								url: K2SitePath+"index.php?option=com_k2&view=item&task=getVotesNum&itemID=" + itemID,
								type: 'get',
								success: function(response){
									log.html(response);
								}
							});
						}, 2000);
					}
				});
			}
		});
	});

	// Classic popup
	$K2('.classicPopup').click(function(event){
		event.preventDefault();
		if($K2(this).attr('rel')){
			var json = $K2(this).attr('rel');
			json = json.replace(/'/g, '"');
			var options = $K2.parseJSON(json);
		} else {
			var options = {x:900,y:600}; /* use some default values if not defined */
		}
		window.open($K2(this).attr('href'),'K2PopUpWindow','width='+options.x+',height='+options.y+',menubar=yes,resizable=yes');
	});
	
	// Live search
	$K2('div.k2LiveSearchBlock form input[name=searchword]').keyup(function(event){
		var parentElement = $K2(this).parent().parent();
		if($K2(this).val().length>3 && event.key!='enter'){
			$K2(this).addClass('k2SearchLoading');
			parentElement.find('.k2LiveSearchResults').css('display','none').empty();
			parentElement.find('input[name=t]').val($K2.now());
			parentElement.find('input[name=format]').val('raw');
			var url = 'index.php?option=com_k2&view=itemlist&task=search&' + parentElement.find('form').serialize();
			parentElement.find('input[name=format]').val('html');
			$K2.ajax({
				url: url,
				type: 'get',
				success: function(response){
					parentElement.find('.k2LiveSearchResults').html(response);
					parentElement.find('input[name=searchword]').removeClass('k2SearchLoading');
					parentElement.find('.k2LiveSearchResults').css('display', 'block');
				}
			});
		} else {
			parentElement.find('.k2LiveSearchResults').css('display','none').empty();
		}
	});

	// Calendar
	$K2('a.calendarNavLink').live('click', function(event){
		event.preventDefault();
		var parentElement = $K2(this).parent().parent().parent().parent();
		var url = $K2(this).attr('href');
		parentElement.empty().addClass('k2CalendarLoader');
		$K2.ajax({
			url: url,
			type: 'post',
			success: function(response){
				parentElement.html(response);
				parentElement.removeClass('k2CalendarLoader');
			}
		});
	});

});

// Equal block heights for the "default" view
$K2(window).load(function () {
	var blocks = $K2('.subCategory');
	var maxHeight = 0;
	blocks.each(function(){
		maxHeight = Math.max(maxHeight, parseInt($K2(this).css('height')));
	});
	blocks.css('height', maxHeight);
});
