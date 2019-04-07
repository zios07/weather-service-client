<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<style type="text/css">
.gm-control-active>img {
	box-sizing: content-box;
	display: none;
	left: 50%;
	pointer-events: none;
	position: absolute;
	top: 50%;
	transform: translate(-50%, -50%)
}

.gm-control-active>img:nth-child(1) {
	display: block
}

.gm-control-active:hover>img:nth-child(1), .gm-control-active:active>img:nth-child(1)
	{
	display: none
}

.gm-control-active:hover>img:nth-child(2), .gm-control-active:active>img:nth-child(3)
	{
	display: block
}
</style>
<link type="text/css" rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans">
<style type="text/css">
.gm-ui-hover-effect {
	opacity: .6
}

.gm-ui-hover-effect:hover {
	opacity: 1
}
</style>
<style type="text/css">
.gm-style .gm-style-cc span, .gm-style .gm-style-cc a, .gm-style .gm-style-mtc div
	{
	font-size: 10px;
	box-sizing: border-box
}
</style>
<style type="text/css">
@media print {
	.gm-style .gmnoprint, .gmnoprint {
		display: none
	}
}

@media screen {
	.gm-style .gmnoscreen, .gmnoscreen {
		display: none
	}
}
</style>
<style type="text/css">
.dismissButton {
	background-color: #fff;
	border: 1px solid #dadce0;
	color: #1a73e8;
	border-radius: 4px;
	font-family: Roboto, sans-serif;
	font-size: 14px;
	height: 36px;
	cursor: pointer;
	padding: 0 24px
}

.dismissButton:hover {
	background-color: rgba(66, 133, 244, 0.04);
	border: 1px solid #d2e3fc
}

.dismissButton:focus {
	background-color: rgba(66, 133, 244, 0.12);
	border: 1px solid #d2e3fc;
	outline: 0
}

.dismissButton:hover:focus {
	background-color: rgba(66, 133, 244, 0.16);
	border: 1px solid #d2e2fd
}

.dismissButton:active {
	background-color: rgba(66, 133, 244, 0.16);
	border: 1px solid #d2e2fd;
	box-shadow: 0 1px 2px 0 rgba(60, 64, 67, 0.3), 0 1px 3px 1px
		rgba(60, 64, 67, 0.15)
}

.dismissButton:disabled {
	background-color: #fff;
	border: 1px solid #f1f3f4;
	color: #3c4043
}
</style>
<style type="text/css">
.gm-style-pbc {
	transition: opacity ease-in-out;
	background-color: rgba(0, 0, 0, 0.45);
	text-align: center
}

.gm-style-pbt {
	font-size: 22px;
	color: white;
	font-family: Roboto, Arial, sans-serif;
	position: relative;
	margin: 0;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%)
}
</style>
<title>Application</title>
<script
	src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
<link
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"
	rel="stylesheet">

<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDqYh4xbK_0vRftfuZAaYECBOazcGfnxi0&amp;sensor=false">
	
</script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$(document).tooltip();

						$('#hotelisting').dataTable({
							"aoColumns" : [ {
								"sTitle" : "Hotel Name"
							}, {
								"sTitle" : "Address"
							}, {
								"sTitle" : "Near Airport"
							}, {
								"sTitle" : "Rating",
								"sClass" : "center"
							}, {
								"sTitle" : "Landmark"
							} ]
						});

						$('#weather_view').dataTable({
							"aoColumns" : [ {
								"sTitle" : "Weather",
								"sClass" : "center",
								"bSortable" : false
							}, {
								"sTitle" : "temperature",
								"sClass" : "center",
								"bSortable" : false
							}, {
								"sTitle" : "Feels like",
								"sClass" : "center",
								"bSortable" : false
							}, {
								"sTitle" : "Relative Humidity",
								"sClass" : "center",
								"bSortable" : false
							}, {
								"sTitle" : "wind",
								"sClass" : "center",
								"bSortable" : false
							}, {
								"sTitle" : "Wind Direction",
								"sClass" : "center",
								"bSortable" : false
							},

							],
							"aaSorting" : []
						});
						$('#weather_view_hour').dataTable({
							"aoColumns" : [ {
								"sTitle" : "Time",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Image",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Temperature",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Feels like",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Relative Humidity",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Prediction",
								"sClass" : "center",
								"bSortable" : false,
							},

							],
							"aaSorting" : [],

						});
						$('#weather_ten_view').dataTable({
							"aoColumns" : [ {
								"sTitle" : "Day",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Image",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "High",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Low",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Prediction",
								"sClass" : "center",
								"bSortable" : false,
							},

							],
							"aaSorting" : [],

						});

						var hotel_table = $('#hotelisting_view').dataTable({
							"aoColumns" : [ {
								"sTitle" : "Hotel Name",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "hotel_id",
								"sClass" : "center",
								"bSortable" : false,
								"bSearchable" : false,
								"bVisible" : false
							}, {
								"sTitle" : "Address",
								"sClass" : "center",
								"bSortable" : true,
							}, {
								"sTitle" : "Near Airport",
								"sClass" : "center",
								"bSortable" : true,
							}, {
								"sTitle" : "Rating",
								"sClass" : "center",
								"bSortable" : true,
							}, {
								"sTitle" : "Landmark",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Description",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "Rates",
								"sClass" : "center",
								"bSortable" : false,
							}, {
								"sTitle" : "longi",
								"sClass" : "center",
								"bSortable" : false,
								"bSearchable" : false,
								"bVisible" : false
							}, {
								"sTitle" : "lati",
								"sClass" : "center",
								"bSortable" : false,
								"bSearchable" : false,
								"bVisible" : false
							},

							],
							"aaSorting" : [],

						});

						$('#hotelisting_view td')
								.live(
										'click',
										function() {
											var aPos = hotel_table
													.fnGetPosition(this);
											var aData = hotel_table
													.fnGetData(aPos[0]);
											var city = $("#city_name").val();
											var state = $("#nameOfState").val();

											window.open(
													"roomreport.aspx?hotel_id="
															+ aData[1]
															+ "&name="
															+ aData[0]
															+ "&rating="
															+ aData[4]
															+ "&count=0&long="
															+ aData[8]
															+ "&lat="
															+ aData[9]
															+ "&city_name="
															+ city
															+ "&state_name="
															+ state, "_blank");

										});

						// this fuction is for the accordion present inside the hotel tab. Name of accordion are 

						// this function is for buttons 
						$(function() {
							$(
									"#get_hotel_list,#get_weather,#roomlookup, #getMovie, #submit_wolfram,#bt_Go,#direction")
									.button().click(function(event) {
									});
						});

					});
</script>
<style type="text/css">
.pod {
	background-color: #FFFFFF;
	background-image: none;
	border: 1px solid #CCCCCC;
	border-radius: 6px 6px 6px 6px;
	clear: both;
	margin: 0 auto 15px;
	padding: 6px 0 4px;
	position: relative;
	width: 645px;
	z-index: 2;
	top: 0px;
	left: 0px;
}

.auto-style1 {
	width: 11%;
}

.auto-style3 {
	width: 6%;
}

.auto-style5 {
	width: 7%;
}

.auto-style6 {
	width: 5%;
}

.auto-style7 {
	width: 93px;
}

.auto-style8 {
	width: 224px;
}

.auto-style10 {
	width: 32px;
}

.auto-style11 {
	width: 937px;
}

.auto-style12 {
	width: 104px;
}

.auto-style13 {
	width: 479px;
}

.auto-style15 {
	width: 98px;
}

.auto-style16 {
	width: 173px;
}

.auto-style17 {
	width: 101px;
}

.auto-style18 {
	width: 134px;
}
</style>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.google.com/maps-api-v3/api/js/36/8/intl/fr_ALL/common.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.google.com/maps-api-v3/api/js/36/8/intl/fr_ALL/util.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.google.com/maps-api-v3/api/js/36/8/intl/fr_ALL/map.js"></script>
<style type="text/css">
.gm-style {
	font: 400 11px Roboto, Arial, sans-serif;
	text-decoration: none;
}

.gm-style img {
	max-width: none;
}
</style>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.google.com/maps-api-v3/api/js/36/8/intl/fr_ALL/onion.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.google.com/maps-api-v3/api/js/36/8/intl/fr_ALL/controls.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.googleapis.com/maps-api-v3/api/js/36/8/intl/fr_ALL/common.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.googleapis.com/maps-api-v3/api/js/36/8/intl/fr_ALL/util.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.googleapis.com/maps-api-v3/api/js/36/8/intl/fr_ALL/common.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.googleapis.com/maps-api-v3/api/js/36/8/intl/fr_ALL/util.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://maps.google.com/maps-api-v3/api/js/36/8/intl/fr_ALL/stats.js"></script>
</head>

<body>


	<form method="post" action="" id="form1">

		<script type="text/javascript">
			//<![CDATA[
			var theForm = document.forms['form1'];
			if (!theForm) {
				theForm = document.form1;
			}
			function __doPostBack(eventTarget, eventArgument) {
				if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
					theForm.__EVENTTARGET.value = eventTarget;
					theForm.__EVENTARGUMENT.value = eventArgument;
					theForm.submit();
				}
			}
			//]]>
		</script>
		${result } 

		<div id="tabs" style="height: 100%"
			class="ui-tabs ui-widget ui-widget-content ui-corner-all">
			<ul
				class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all"
				role="tablist">
				<li
					class="ui-state-default ui-corner-top ui-tabs-active ui-state-active"
					role="tab" tabindex="0" aria-controls="weather"
					aria-labelledby="ui-id-3" aria-selected="true"><a
					href="#weather" class="ui-tabs-anchor" role="presentation"
					tabindex="-1" id="ui-id-3">Weather</a></li>
			</ul>
			<div id="weather" style="height: auto" aria-labelledby="ui-id-3"
				class="ui-tabs-panel ui-widget-content ui-corner-bottom"
				role="tabpanel" aria-expanded="true" aria-hidden="false">
				<div>
					<table>
						<tbody>
							<tr>
								<td class="auto-style1"><span id="state_name_lable_weather">State
										Name:</span></td>
								<td style="width: 10%"><select
									name="state_names_for_weather" id="state_names_for_weather"
									title="Please select state from list">
										<option value="AL">Alabama</option>
										<option value="AK">Alaska</option>
										<option value="AZ">Arizona</option>
										<option value="AR">Arkansas</option>
										<option value="CA">California</option>
										<option value="CO">Colorado</option>
										<option value="CT">Connecticut</option>
										<option value="DC">District of Columbia</option>
										<option value="DE">Delaware</option>
										<option value="FL">Florida</option>
										<option value="GA">Georgia</option>
										<option value="HI">Hawaii</option>
										<option value="ID">Idaho</option>
										<option value="IL">Illinois</option>
										<option value="IN">Indiana</option>
										<option value="IA">Iowa</option>
										<option value="KS">Kansas</option>
										<option value="KY">Kentucky</option>
										<option value="LA">Louisiana</option>
										<option value="ME">Maine</option>
										<option value="MD">Maryland</option>
										<option value="MA">Massachusetts</option>
										<option value="MI">Michigan</option>
										<option value="MN">Minnesota</option>
										<option value="MS">Mississippi</option>
										<option value="MO">Missouri</option>
										<option value="MT">Montana</option>
										<option value="NE">Nebraska</option>
										<option value="NV">Nevada</option>
										<option value="NH">New Hampshire</option>
										<option value="NJ">New Jersey</option>
										<option value="NM">New Mexico</option>
										<option value="NY">New York</option>
										<option value="NC">North Carolina</option>
										<option value="ND">North Dakota</option>
										<option value="OH">Ohio</option>
										<option value="OK">Oklahoma</option>
										<option value="OR">Oregon</option>
										<option value="PA">Pennsylvania</option>
										<option value="RI">Rhode Island</option>
										<option value="SC">South Carolina</option>
										<option value="SD">South Dakota</option>
										<option value="TN">Tennessee</option>
										<option value="TX">Texas</option>
										<option value="UT">Utah</option>
										<option value="VT">Vermont</option>
										<option value="VA">Virginia</option>
										<option value="WA">Washington</option>
										<option value="WV">West Virginia</option>
										<option value="WI">Wisconsin</option>
										<option value="WY">Wyoming</option>

								</select></td>
								<td class="auto-style3"></td>
								<td style="width: 10%"><span id="city_name_text">City
										Name</span></td>
								<td style="width: 10%"><input name="city_name_weather"
									type="text" id="city_name_weather" title="Please enter city"
									style="width: 155px;"></td>
								<td class="auto-style3"></td>
								<td class="auto-style5"><span id="hourly_text">Hourly</span>
								</td>
								<td class="auto-style6"><span
									title="Check for Hourly Update"><input id="hourly_check"
										type="radio" name="check_type" value="1"></span></td>
								<td class="auto-style3"><span id="ten_day_text">10
										Days</span></td>
								<td class="auto-style5"><span
									title="Check for 10 days update"><input
										id="Ten_day_check" type="radio" name="check_type" value="2"></span>
								</td>
								<td style="width: 10%"><input type="submit"
									name="get_weather" value="Get Weather" id="get_weather"
									class="ui-button ui-widget ui-state-default ui-corner-all"
									role="button" aria-disabled="false"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- this div is for outputing weather details -->
				&nbsp;&nbsp;
				<div id="weather_map_div">

					<div id="info_weather_div">

						<!-- <div style="width: 50%; float: left;">
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="auto-style7">Loaction:
                                        </td>
                                        <td class="auto-style8">
                                            <span id="location_text"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Time
                                        </td>
                                        <td>
                                            <span id="time_text"></span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div> -->

						<!-- <div style="width: 500px; height: 300px; float: left;">
            
                                    <div id="weather_map" name="weather_map" style="width:500px;height:300px;">
                                        <div id="subgurim_weather_map"
                                            style="width: 500px; height: 300px; font-size: 12px; font-family: Arial; background-color: rgb(220, 220, 220); position: relative; overflow: hidden;">
                                            <div
                                                style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
                                                <div class="gm-style"
                                                    style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
                                                    <div tabindex="0"
                                                        style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;http://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: pan-x pan-y;">
                                                        <div
                                                            style="z-index: 1; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
                                                            <div
                                                                style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
                                                                <div style="position: absolute; left: 0px; top: 0px; z-index: 0;">
                                                                    <div
                                                                        style="position: absolute; z-index: 994; transform: matrix(1, 0, 0, 1, -110, -255);">
                                                                        <div
                                                                            style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px;">
                                                                            <div style="width: 256px; height: 256px;"></div>
                                                                        </div>
                                                                        <div
                                                                            style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px;">
                                                                            <div style="width: 256px; height: 256px;"></div>
                                                                        </div>
                                                                        <div
                                                                            style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;">
                                                                            <div style="width: 256px; height: 256px;"></div>
                                                                        </div>
                                                                        <div
                                                                            style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;">
                                                                            <div style="width: 256px; height: 256px;"></div>
                                                                        </div>
                                                                        <div
                                                                            style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px;">
                                                                            <div style="width: 256px; height: 256px;"></div>
                                                                        </div>
                                                                        <div
                                                                            style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px;">
                                                                            <div style="width: 256px; height: 256px;"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div
                                                                style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;">
                                                            </div>
                                                            <div
                                                                style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;">
                                                            </div>
                                                            <div
                                                                style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">
                                                            </div>
                                                            <div style="position: absolute; left: 0px; top: 0px; z-index: 0;">
                                                                <div
                                                                    style="position: absolute; z-index: 994; transform: matrix(1, 0, 0, 1, -110, -255);">
                                                                    <div
                                                                        style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
                                                                        <img draggable="false" alt="" role="presentation"
                                                                            src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i6!2i31!3i24!4i256!2m3!1e0!2sm!3i461169640!2m3!1e2!6m1!3e5!3m14!2sfr-FR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=5970"
                                                                            style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                                    </div>
                                                                    <div
                                                                        style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
                                                                        <img draggable="false" alt="" role="presentation"
                                                                            src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i6!2i32!3i24!4i256!2m3!1e0!2sm!3i461169640!2m3!1e2!6m1!3e5!3m14!2sfr-FR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=29719"
                                                                            style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                                    </div>
                                                                    <div
                                                                        style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
                                                                        <img draggable="false" alt="" role="presentation"
                                                                            src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i6!2i30!3i24!4i256!2m3!1e0!2sm!3i461169640!2m3!1e2!6m1!3e5!3m14!2sfr-FR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=113292"
                                                                            style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                                    </div>
                                                                    <div
                                                                        style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
                                                                        <img draggable="false" alt="" role="presentation"
                                                                            src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i6!2i30!3i23!4i256!2m3!1e0!2sm!3i461169640!2m3!1e2!6m1!3e5!3m14!2sfr-FR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=123673"
                                                                            style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                                    </div>
                                                                    <div
                                                                        style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
                                                                        <img draggable="false" alt="" role="presentation"
                                                                            src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i6!2i31!3i23!4i256!2m3!1e0!2sm!3i461169640!2m3!1e2!6m1!3e5!3m14!2sfr-FR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=16351"
                                                                            style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                                    </div>
                                                                    <div
                                                                        style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
                                                                        <img draggable="false" alt="" role="presentation"
                                                                            src="http://maps.google.com/maps/vt?pb=!1m5!1m4!1i6!2i32!3i23!4i256!2m3!1e0!2sm!3i461169640!2m3!1e2!6m1!3e5!3m14!2sfr-FR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0!5m1!5f2&amp;token=40100"
                                                                            style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="gm-style-pbc"
                                                            style="z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;">
                                                            <p class="gm-style-pbt"></p>
                                                        </div>
                                                        <div
                                                            style="z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;">
                                                            <div
                                                                style="z-index: 4; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
                                                                <div
                                                                    style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;">
                                                                </div>
                                                                <div
                                                                    style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;">
                                                                </div>
                                                                <div
                                                                    style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;">
                                                                </div>
                                                                <div
                                                                    style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div><iframe aria-hidden="true" frameborder="0"
                                                        style="z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none;"
                                                        src="about:blank"></iframe>
                                                    <div
                                                        style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">
                                                        <a target="_blank" rel="noopener"
                                                            href="https://maps.google.com/maps?ll=41,-3.2&amp;z=6&amp;t=m&amp;hl=fr-FR&amp;gl=US&amp;mapclient=apiv3"
                                                            title="Ouvrir cette zone dans Google&nbsp;Maps (dans une nouvelle fenêtre)"
                                                            style="position: static; overflow: visible; float: none; display: inline;">
                                                            <div style="width: 66px; height: 26px; cursor: pointer;"><img alt=""
                                                                    src="http://maps.gstatic.com/mapfiles/api-3/images/google4_hdpi.png"
                                                                    draggable="false"
                                                                    style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;">
                                                            </div>
                                                        </a></div>
                                                    <div
                                                        style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-sizing: border-box; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 300px; height: 180px; position: absolute; left: 100px; top: 60px;">
                                                        <div style="padding: 0px 0px 10px; font-size: 16px;">Données cartographiques
                                                        </div>
                                                        <div style="font-size: 13px;">Données cartographiques ©2019 GeoBasis-DE/BKG
                                                            (©2009), Google, Inst. Geogr. Nacional</div><button draggable="false"
                                                            title="Fermer" aria-label="Fermer" type="button"
                                                            class="gm-ui-hover-effect"
                                                            style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: absolute; cursor: pointer; user-select: none; top: 0px; right: 0px; width: 37px; height: 37px;"><img
                                                                src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%206.41L17.59%205%2012%2010.59%206.41%205%205%206.41%2010.59%2012%205%2017.59%206.41%2019%2012%2013.41%2017.59%2019%2019%2017.59%2013.41%2012z%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                style="pointer-events: none; display: block; width: 13px; height: 13px; margin: 12px;"></button>
                                                    </div>
                                                    <div class="gmnoprint"
                                                        style="z-index: 1000001; position: absolute; right: 113px; bottom: 0px; width: 126px;">
                                                        <div draggable="false" class="gm-style-cc"
                                                            style="user-select: none; height: 14px; line-height: 14px;">
                                                            <div
                                                                style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
                                                                <div style="width: 1px;"></div>
                                                                <div
                                                                    style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;">
                                                                </div>
                                                            </div>
                                                            <div
                                                                style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
                                                                <a style="text-decoration: none; cursor: pointer;">Données
                                                                    cartographiques</a><span style="display: none;">Données
                                                                    cartographiques ©2019 GeoBasis-DE/BKG (©2009), Google, Inst.
                                                                    Geogr. Nacional</span></div>
                                                        </div>
                                                    </div>
                                                    <div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;">
                                                        <div
                                                            style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">
                                                            Données cartographiques ©2019 GeoBasis-DE/BKG (©2009), Google, Inst.
                                                            Geogr. Nacional</div>
                                                    </div>
                                                    <div class="gmnoprint gm-style-cc" draggable="false"
                                                        style="z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">
                                                        <div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
                                                            <div style="width: 1px;"></div>
                                                            <div
                                                                style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;">
                                                            </div>
                                                        </div>
                                                        <div
                                                            style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
                                                            <a href="https://www.google.com/intl/fr-FR_US/help/terms_maps.html"
                                                                target="_blank" rel="noopener"
                                                                style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Conditions
                                                                d'utilisation</a></div>
                                                    </div><button draggable="false" title="Passer en plein écran"
                                                        aria-label="Passer en plein écran" type="button"
                                                        class="gm-control-active gm-fullscreen-control"
                                                        style="background: none rgb(255, 255, 255); border: 0px; margin: 10px; padding: 0px; position: absolute; cursor: pointer; user-select: none; border-radius: 2px; height: 40px; width: 40px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; overflow: hidden; top: 0px; right: 0px;"><img
                                                            src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%20018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                            style="height: 18px; width: 18px;"><img
                                                            src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                            style="height: 18px; width: 18px;"><img
                                                            src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                            style="height: 18px; width: 18px;"></button>
                                                    <div draggable="false" class="gm-style-cc"
                                                        style="user-select: none; height: 14px; line-height: 14px; display: none; position: absolute; right: 0px; bottom: 0px;">
                                                        <div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
                                                            <div style="width: 1px;"></div>
                                                            <div
                                                                style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;">
                                                            </div>
                                                        </div>
                                                        <div
                                                            style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
                                                            <a target="_blank" rel="noopener"
                                                                title="Signaler à Google une erreur dans la carte routière ou les images"
                                                                href="https://www.google.com/maps/@41,-3.2,6z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3"
                                                                style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Signaler
                                                                une erreur cartographique</a></div>
                                                    </div>
                                                    <div class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom"
                                                        draggable="false" controlwidth="40" controlheight="113"
                                                        style="margin: 10px; user-select: none; position: absolute; bottom: 127px; right: 40px;">
                                                        <div class="gmnoprint" controlwidth="40" controlheight="81"
                                                            style="position: absolute; left: 0px; top: 32px;">
                                                            <div draggable="false"
                                                                style="user-select: none; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 40px; height: 81px;">
                                                                <button draggable="false" title="Zoom avant" aria-label="Zoom avant"
                                                                    type="button" class="gm-control-active"
                                                                    style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23666%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="height: 18px; width: 18px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23333%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="height: 18px; width: 18px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23111%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="height: 18px; width: 18px;"></button>
                                                                <div
                                                                    style="position: relative; overflow: hidden; width: 30px; height: 1px; margin: 0px 5px; background-color: rgb(230, 230, 230); top: 0px;">
                                                                </div><button draggable="false" title="Zoom arrière"
                                                                    aria-label="Zoom arrière" type="button"
                                                                    class="gm-control-active"
                                                                    style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="height: 18px; width: 18px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="height: 18px; width: 18px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="height: 18px; width: 18px;"></button>
                                                            </div>
                                                        </div>
                                                        <div style="position: absolute; left: 20px; top: 0px;"></div>
                                                        <div class="gmnoprint" controlwidth="40" controlheight="40"
                                                            style="display: none; position: absolute;">
                                                            <div style="width: 40px; height: 40px;"><button draggable="false"
                                                                    title="Faire pivoter la carte à 90°"
                                                                    aria-label="Faire pivoter la carte à 90°" type="button"
                                                                    class="gm-control-active"
                                                                    style="background: none rgb(255, 255, 255); display: none; border: 0px; margin: 0px 0px 32px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="height: 18px; width: 18px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="height: 18px; width: 18px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="height: 18px; width: 18px;"></button><button
                                                                    draggable="false" title="Incliner la carte"
                                                                    aria-label="Incliner la carte" type="button"
                                                                    class="gm-tilt gm-control-active"
                                                                    style="background: none rgb(255, 255, 255); display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="width: 18px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="width: 18px;"><img
                                                                        src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
                                                                        style="width: 18px;"></button></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                style="background-color: white; font-weight: 500; font-family: Roboto, sans-serif; padding: 15px 25px; box-sizing: border-box; top: 5px; border: 1px solid rgba(0, 0, 0, 0.12); border-radius: 5px; left: 50%; max-width: 375px; position: absolute; transform: translateX(-50%); width: calc(100% - 10px); z-index: 1;">
                                                <div><img alt="" src="http://maps.gstatic.com/mapfiles/api-3/images/google_gray.svg"
                                                        draggable="false"
                                                        style="padding: 0px; margin: 0px; border: 0px; height: 17px; vertical-align: middle; width: 52px; user-select: none;">
                                                </div>
                                                <div style="line-height: 20px; margin: 15px 0px;"><span
                                                        style="color: rgba(0, 0, 0, 0.87); font-size: 14px;">Impossible de charger
                                                        Google&nbsp;Maps correctement sur cette page.</span></div>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        td style="line-height: 16px; vertical-align: middle;"><a
                                                                href="https://developers.google.com/maps/documentation/javascript/error-messages?utm_source=maps_js&amp;utm_medium=degraded&amp;utm_campaign=keyless#api-key-and-billing-errors"
                                                                target="_blank" rel="noopener"
                                                                style="color: rgba(0, 0, 0, 0.54); font-size: 12px;">Ce site Web
                                                                vous appartient&nbsp;?</a></td>
                                                        <td style="text-align: right;"><button class="dismissButton">OK</button>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div><input type="hidden" id="subgurim_weather_map_Event2"
                                        name="subgurim_weather_map_Event2"><input type="hidden" id="subgurim_weather_map_Event0"
                                        name="subgurim_weather_map_Event0" value="roadmap"><input type="hidden"
                                        id="subgurim_weather_map_Event1" name="subgurim_weather_map_Event1" value="6">
                                </div> -->

					</div>

				</div>
				<div id="errorWeather" style="display: block"></div>
			</div>
		</div>


		<script type="text/javascript">
			//<![CDATA[
			var GMapsProperties = {};
			function getGMapElementById(mapId, GMapElementId) {
				var _mapId = typeof (mapId) == 'string' ? mapId : mapId
						.getDiv().id;
				var overlayArray = GMapsProperties[_mapId]['overlayArray'];
				for (var i = 0; i < overlayArray.length; i++) {
					if (overlayArray[i][0] == GMapElementId) {
						return overlayArray[i][1];
					}
				}
				return null;
			}
			function removeGMapElementById(mapId, GMapElementId) {
				var _mapId = typeof (mapId) == 'string' ? mapId : mapId
						.getDiv().id;
				var overlayArray = GMapsProperties[_mapId]['overlayArray'];
				for (var i = 0; i < overlayArray.length; i++) {
					if (overlayArray[i][0] == GMapElementId) {
						overlayArray.splice(i, 1);
						return;
					}
				}
			}
			function closeWindows(mapId) {
				for (var i = 0; i < GMapsProperties[mapId]['windowArray'].length; i++) {
					GMapsProperties[mapId]['windowArray'][i][1].close();
				}
			}
			var _sg = _sg || {};
			_sg.cs = (function() {
				var p = {};
				p.createMarker = function(opt, id) {
					var m = new google.maps.Marker(opt);
					if (id && m.getMap())
						GMapsProperties[m.getMap().getDiv().id]['overlayArray']
								.push([ id, m ]);
					return m;
				};
				p.createPolyline = function(opt, id) {
					var m = new google.maps.Polyline(opt);
					if (id && m.getMap())
						GMapsProperties[m.getMap().getDiv().id]['overlayArray']
								.push([ id, m ]);
					return m;
				};
				p.createPolygon = function(opt, id) {
					var m = new google.maps.Polygon(opt);
					if (id && m.getMap())
						GMapsProperties[m.getMap().getDiv().id]['overlayArray']
								.push([ id, m ]);
					return m;
				};
				return p;
			})();
			function addEvent(el, ev, fn) {
				if (el.addEventListener)
					el.addEventListener(ev, fn, false);
				else if (el.attachEvent)
					el.attachEvent('on' + ev, fn);
				else
					el['on' + ev] = fn;
			}
			GMapsProperties['subgurim_weather_map'] = {};
			var GMapsProperties_subgurim_weather_map = GMapsProperties['subgurim_weather_map'];
			GMapsProperties_subgurim_weather_map['enableStore'] = false;
			GMapsProperties_subgurim_weather_map['overlayArray'] = new Array();
			GMapsProperties_subgurim_weather_map['windowArray'] = new Array();
			var subgurim_weather_map;
			function load_subgurim_weather_map() {
				var mapDOM = document.getElementById('subgurim_weather_map');
				if (!mapDOM)
					return;
				subgurim_weather_map = new google.maps.Map(mapDOM);
				function subgurim_weather_mapupdateValues(eventId, value) {
					var item = document
							.getElementById('subgurim_weather_map_Event'
									+ eventId);
					item.value = value;
				}
				google.maps.event
						.addListener(
								subgurim_weather_map,
								'addoverlay',
								function(overlay) {
									if (overlay) {
										GMapsProperties['subgurim_weather_map']['overlayArray']
												.push(overlay);
									}
								});
				google.maps.event
						.addListener(
								subgurim_weather_map,
								'clearoverlays',
								function() {
									GMapsProperties['subgurim_weather_map']['overlayArray'] = new Array();
								});
				google.maps.event.addListener(subgurim_weather_map,
						'removeoverlay', function(overlay) {
							removeGMapElementById('subgurim_weather_map',
									overlay.id)
						});
				google.maps.event.addListener(subgurim_weather_map,
						'maptypeid_changed', function() {
							var tipo = subgurim_weather_map.getMapTypeId();
							subgurim_weather_mapupdateValues('0', tipo);
						});
				google.maps.event.addListener(subgurim_weather_map, 'dragend',
						function() {
							var lat = subgurim_weather_map.getCenter().lat();
							var lng = subgurim_weather_map.getCenter().lng();
							subgurim_weather_mapupdateValues('2', lat + ','
									+ lng);
						});
				google.maps.event.addListener(subgurim_weather_map,
						'zoom_changed', function() {
							subgurim_weather_mapupdateValues('1',
									subgurim_weather_map.getZoom());
						});
				subgurim_weather_map.setOptions({
					center : new google.maps.LatLng(41, -3.2),
					mapTypeControl : false,
					mapTypeId : google.maps.MapTypeId.ROADMAP,
					zoom : 6
				});
			}
			addEvent(window, 'load', load_subgurim_weather_map);//]]>
		</script>
	</form>
</body>

</html>