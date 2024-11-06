/*
 * Easing Compatibility v1 - http://gsgd.co.uk/sandbox/jquery/easing
 *
 * Adds compatibility for applications that use the pre 1.2 easing names
 *
 * Copyright (c) 2007 George Smith
 * Licensed under the MIT License:
 *   http://www.opensource.org/licenses/mit-license.php
 */

(function($) {
	const easingMethods = {
	  easeIn: "easeInQuad",
	  easeOut: "easeOutQuad",
	  easeInOut: "easeInOutQuad",
	  expoin: "easeInExpo",
	  expoout: "easeOutExpo",
	  expoinout: "easeInOutExpo",
	  bouncein: "easeInBounce",
	  bounceout: "easeOutBounce",
	  bounceinout: "easeInOutBounce",
	  elasin: "easeInElastic",
	  elasout: "easeOutElastic",
	  elasinout: "easeInOutElastic",
	  backin: "easeInBack",
	  backout: "easeOutBack",
	  backinout: "easeInOutBack"
	};
  
	$.extend($.easing, Object.fromEntries(
	  Object.entries(easingMethods).map(([key, method]) => [
		key,
		function(args) {
		  return $.easing[method](args.x, args.t, args.b, args.c, args.d);
		}
	  ])
	));
})(jQuery);
