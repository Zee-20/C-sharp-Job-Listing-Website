<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplication1.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- <div class="col-md-5 w3l_mail_left">
    
    
   <!-- mail -->
<%--	<div class="agileits_w3layouts_mail_grids">	
		<div class="col-md-7 w3l_mail_left">
			<div id="map"></div>
		</div>
		<div class="col-md-5 w3l_mail_right">
			<h3>Contact Info</h3>
			<ul>
				<li><span><i class="fa fa-home" aria-hidden="true"></i>Address<label>:</label></span> APU, Bukit Jalil TPM 3900.</li>
				<li><span><i class="fa fa-phone" aria-hidden="true"></i>Phone<label>:</label></span> (+012) 345 6432</li>
				<li><span><i class="fa fa-fax" aria-hidden="true"></i>Fax<label>:</label></span> +82-21-1218</li>
				<li><span><i class="fa fa-envelope" aria-hidden="true"></i>Email<label>:</label></span> <a href="mailto:info@example.com">apukarateclub@gmail.com</a></li>
			
			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>--%>
	<div class="banner-bottom">
		<div class="container">
			<h3 class="agileits_head">Provide us your feedback &amp; comments</h3>
			<p class="w3layouts_para">My Opinion<table class="nav-justified">
                <tr>
                    <td style="width: 368px; height: 61px"><strong>
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                        </strong></td>
                    <td class="text-left" style="height: 61px">
                        <asp:TextBox ID="txtName" runat="server" Width="692px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 368px; height: 50px"><strong>
                        <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                        </strong></td>
                    <td class="text-left" style="height: 50px">
                        <asp:TextBox ID="txtEmail" runat="server" Width="695px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 368px; height: 49px"><strong>
                        <asp:Label ID="Label3" runat="server" Text="Subject:"></asp:Label>
                        </strong></td>
                    <td class="text-left" style="height: 49px">
                        <asp:TextBox ID="txtSubject" runat="server" Width="700px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 368px; height: 50px"><strong>
                        <asp:Label ID="Label4" runat="server" Text="Message:"></asp:Label>
                        </strong></td>
                    <td class="text-left" style="height: 50px">
                        <asp:TextBox ID="txtMessage" runat="server" Height="129px" TextMode="MultiLine" Width="706px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 368px; height: 46px">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
                    </td>
                    <td class="text-left" style="height: 46px"><strong>
                        <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" style="color: #333333; font-weight: bold" Text="Send" Width="714px" />
                        </strong></td>
                </tr>
                </table>
            </p>
			
		</div>
	</div>
<!-- //mail -->
<!-- map -->
	<script type="text/javascript">
		// When the window has finished loading create our google map below
		google.maps.event.addDomListener(window, 'load', init);
	
		function init() {
			// Basic options for a simple Google Map
			// For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
			var mapOptions = {
				// How zoomed in you want the map to start at (always required)
				zoom: 11,

				// The latitude and longitude to center the map (always required)
				center: new google.maps.LatLng(40.6700, -73.9400), // New York

				// How you would like to style the map. 
				// This is where you would paste any style found on Snazzy Maps.
				styles: [{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"administrative.neighborhood","elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"administrative.neighborhood","elementType":"labels.icon","stylers":[{"visibility":"on"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi.attraction","elementType":"labels","stylers":[{"visibility":"on"}]},{"featureType":"poi.attraction","elementType":"labels.text","stylers":[{"visibility":"on"}]},{"featureType":"poi.attraction","elementType":"labels.icon","stylers":[{"visibility":"on"}]},{"featureType":"poi.business","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"poi.business","elementType":"labels.text","stylers":[{"visibility":"on"}]},{"featureType":"poi.business","elementType":"labels.icon","stylers":[{"visibility":"on"},{"weight":"1.10"}]},{"featureType":"poi.government","elementType":"labels","stylers":[{"visibility":"on"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"visibility":"on"}]},{"featureType":"poi.park","elementType":"labels.text","stylers":[{"visibility":"simplified"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.text","stylers":[{"visibility":"on"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"road.local","elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#91bde7"},{"visibility":"on"}]}]
			};

			// Get the HTML DOM element that will contain your map 
			// We are using a div with id="map" seen below in the <body>
			var mapElement = document.getElementById('map');

			// Create the Google Map using our element and options defined above
			var map = new google.maps.Map(mapElement, mapOptions);

			// Let's also add a marker while we're at it
			var marker = new google.maps.Marker({
				position: new google.maps.LatLng(40.6700, -73.9400),
				map: map,
				title: 'Snazzy!'
			});
		}
	</script>
<!-- //map -->
	<script src="js/classie.js"></script>
	<script>
		(function() {
			// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
			if (!String.prototype.trim) {
				(function() {
					// Make sure we trim BOM and NBSP
					var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
					String.prototype.trim = function() {
						return this.replace(rtrim, '');
					};
				})();
			}

			[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
				// in case the input is already filled..
				if( inputEl.value.trim() !== '' ) {
					classie.add( inputEl.parentNode, 'input--filled' );
				}

				// events:
				inputEl.addEventListener( 'focus', onInputFocus );
				inputEl.addEventListener( 'blur', onInputBlur );
			} );

			function onInputFocus( ev ) {
				classie.add( ev.target.parentNode, 'input--filled' );
			}

			function onInputBlur( ev ) {
				if( ev.target.value.trim() === '' ) {
					classie.remove( ev.target.parentNode, 'input--filled' );
				}
			}
		})();
	</script>


</asp:Content>
