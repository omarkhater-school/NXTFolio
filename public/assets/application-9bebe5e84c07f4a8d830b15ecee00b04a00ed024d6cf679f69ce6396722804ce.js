console.log("Javascript update testing"),$(document).ready(function(){console.log("I am inside document function"),$(".modeldiv").hide(),$(".branddiv").hide(),$(".othercreatordiv").hide(),$(".influencerdiv").hide(),$(".bloggingdiv").hide(),$(".contentdiv").hide(),$(".salesdiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".photographerdiv").hide(),$(".agentdiv").hide(),$(".designerdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),console.log("Printing Button Status:.."),$(".modelbutton").on("click",function(){localStorage.setItem("buttonpressed","model"),$(".modeldiv").show(),$(".alldiv").hide(),$(".branddiv").hide(),$(".othercreatordiv").hide(),$(".influencerdiv").hide(),$(".bloggingdiv").hide(),$(".contentdiv").hide(),$(".salesdiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".photographerdiv").hide(),$(".agentdiv").hide(),$(".designerdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".othercreatorbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".modelbutton").addClass("active")}),$(".brandbutton").click(function(){localStorage.setItem("buttonpressed","brand"),$(".branddiv").show(),$(".alldiv").hide(),$(".othercreatordiv").hide(),$(".influencerdiv").hide(),$(".bloggingdiv").hide(),$(".contentdiv").hide(),$(".salesdiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".photographerdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".designerdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".othercreatorbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".brandbutton").addClass("active")}),$(".photographerbutton").click(function(){localStorage.setItem("buttonpressed","photographer"),$(".photographerdiv").show(),$(".alldiv").hide(),$(".branddiv").hide(),$(".othercreatordiv").hide(),$(".influencerdiv").hide(),$(".bloggingdiv").hide(),$(".contentdiv").hide(),$(".salesdiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".designerdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".othercreatorbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".photographerbutton").addClass("active")}),$(".designerbutton").click(function(){localStorage.setItem("buttonpressed","designer"),$(".designerdiv").show(),$(".alldiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".othercreatordiv").hide(),$(".influencerdiv").hide(),$(".bloggingdiv").hide(),$(".contentdiv").hide(),$(".salesdiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".othercreatorbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".designerbutton").addClass("active")}),$(".othercreatorbutton").click(function(){localStorage.setItem("buttonpressed","othercreator"),$(".othercreatordiv").show(),$(".alldiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".influencerdiv").hide(),$(".bloggingdiv").hide(),$(".contentdiv").hide(),$(".salesdiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".contentbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".othercreatorbutton").addClass("active")}),$(".influencerbutton").click(function(){localStorage.setItem("buttonpressed","influencer"),$(".influencerdiv").show(),$(".alldiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".bloggingdiv").hide(),$(".contentdiv").hide(),$(".salesdiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".influencerbutton").addClass("active")}),$(".contentbutton").click(function(){localStorage.setItem("buttonpressed","content"),$(".contentdiv").show(),$(".alldiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".visualdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".salesbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".contentbutton").addClass("active")}),$(".salesbutton").click(function(){localStorage.setItem("buttonpressed","sales"),$(".salesdiv").show(),$(".alldiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".bloggingdiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".visualdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".marketingbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".salesbutton").addClass("active")}),$(".bloggerbutton").click(function(){localStorage.setItem("buttonpressed","blogger"),$(".bloggingdiv").show(),$(".alldiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".marketingdiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".visualdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".marketingbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".bloggerbutton").addClass("active")}),$(".marketingbutton").click(function(){localStorage.setItem("buttonpressed","marketing"),$(".marketingdiv").show(),$(".alldiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".retaildiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".visualdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".visualbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".marketingbutton").addClass("active")}),$(".retailbutton").click(function(){localStorage.setItem("buttonpressed","retail"),$(".retaildiv").show(),$(".alldiv").hide(),$(".marketingdiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".visualdiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".visualbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".retailbutton").addClass("active")}),$(".visualbutton").click(function(){localStorage.setItem("buttonpressed","visual"),$(".visualdiv").show(),$(".alldiv").hide(),$(".retaildiv").hide(),$(".marketingdiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".financingdiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".retailbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".visualbutton").addClass("active")}),$(".financingbutton").click(function(){localStorage.setItem("buttonpressed","financing"),$(".financingdiv").show(),$(".alldiv").hide(),$(".visualdiv").hide(),$(".retaildiv").hide(),$(".marketingdiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".retailbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".financingbutton").addClass("active")}),$(".forecastingbutton").click(function(){localStorage.setItem("buttonpressed","forecasting"),$(".forecastingdiv").show(),$(".alldiv").hide(),$(".financingdiv").hide(),$(".visualdiv").hide(),$(".retaildiv").hide(),$(".marketingdiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".retailbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").addClass("active"),$(".financingbutton").removeClass("active")}),$(".stylistbutton").click(function(){localStorage.setItem("buttonpressed","stylist"),$(".forecastingdiv").hide(),$(".alldiv").hide(),$(".financingdiv").hide(),$(".visualdiv").hide(),$(".retaildiv").hide(),$(".marketingdiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".otherservicesdiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").show(),$(".retailbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".stylistbutton").addClass("active"),$(".forecastingbutton").removeClass("active"),$(".financingbutton").removeClass("active")}),$(".otherservicesbutton").click(function(){localStorage.setItem("buttonpressed","otherservices"),$(".otherservicesdiv").show(),$(".alldiv").hide(),$(".financingdiv").hide(),$(".visualdiv").hide(),$(".retaildiv").hide(),$(".marketingdiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".manufacturingdiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".retailbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".otherservicesbutton").addClass("active")}),$(".manufacturingbutton").click(function(){localStorage.setItem("buttonpressed","manufacturing"),$(".manufacturingdiv").show(),$(".alldiv").hide(),$(".otherservicesdiv").hide(),$(".financingdiv").hide(),$(".visualdiv").hide(),$(".retaildiv").hide(),$(".marketingdiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".materialsdiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".retailbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".manufacturingbutton").addClass("active")}),$(".materialsbutton").click(function(){localStorage.setItem("buttonpressed","materials"),$(".materialsdiv").show(),$(".alldiv").hide(),$(".manufacturingdiv").hide(),$(".otherservicesdiv").hide(),$(".financingdiv").hide(),$(".visualdiv").hide(),$(".retaildiv").hide(),$(".marketingdiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".othermakersdiv").hide(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".retailbutton").removeClass("active"),$(".materialsbutton").addClass("active"),$(".othermakersbutton").removeClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".materialsbutton").addClass("active")}),$(".othermakersbutton").click(function(){localStorage.setItem("buttonpressed","othermakers"),$(".othermakersiv").show(),$(".materialsdiv").hide(),$(".alldiv").hide(),$(".manufacturingdiv").hide(),$(".otherservicesdiv").hide(),$(".financingdiv").hide(),$(".visualdiv").hide(),$(".retaildiv").hide(),$(".marketingdiv").hide(),$(".bloggingdiv").hide(),$(".salesdiv").hide(),$(".contentdiv").hide(),$(".influencerdiv").hide(),$(".othercreatordiv").hide(),$(".designerdiv").hide(),$(".photographerdiv").hide(),$(".branddiv").hide(),$(".othermakersdiv").show(),$(".modeldiv").hide(),$(".agentdiv").hide(),$(".everyonediv").hide(),$(".stylistdiv").hide(),$(".forecastingdiv").hide(),$(".retailbutton").removeClass("active"),$(".materialsbutton").addClass("active"),$(".everyonebutton").removeClass("active"),$(".agentbutton").removeClass("active"),$(".modelbutton").removeClass("active"),$(".brandbutton").removeClass("active"),$(".photographerbutton").removeClass("active"),$(".designerbutton").removeClass("active"),$(".othercreatorbutton").removeClass("active"),$(".influencerbutton").removeClass("active"),$(".contentbutton").removeClass("active"),$(".salesbutton").removeClass("active"),$(".bloggerbutton").removeClass("active"),$(".marketingbutton").removeClass("active"),$(".retailbutton").removeClass("active"),$(".visualbutton").removeClass("active"),$(".financingbutton").removeClass("active"),$(".otherservicesbutton").removeClass("active"),$(".manufacturingbutton").removeClass("active"),$(".materialsbutton").removeClass("active"),$(".stylistbutton").removeClass("active"),$(".forecastingbutton").removeClass("active"),$(".othermakersbutton").addClass("active")})});