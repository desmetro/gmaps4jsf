<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://code.google.com/p/gmaps4jsf/" prefix="m" %>
<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <f:view>
        <head>
        	<%@include file="../templates/internalHeader.jspf" %>               
        </head>  
        <body onunload="GUnload()">
			<f:subview id="subview">
				<h:form id="form">
					<div>Markers Server side events - Drag the markers (non-Ajax)</div>
					<m:map width="90%" height="90%" latitude="24" longitude="15" jsVariable="map1" zoom="2" type="G_PHYSICAL_MAP">
						<m:marker id="marker1" latitude="30.01" longitude="31.14" jsVariable="marker1" draggable="true" submitOnValueChange="true" valueChangeListener="#{map.processValueChangeForFirstMarker}">
							<m:icon shadowImageURL="http://www.google.com/mapfiles/shadow50.png" imageURL="http://www.google.com/mapfiles/markerA.png"/>
							<m:htmlInformationWindow htmlText="Iam Marker A"/>
						</m:marker>
						<m:marker id="marker2" latitude="39" longitude="-101" jsVariable="marker2" draggable="true" submitOnValueChange="true" valueChangeListener="#{map.processValueChangeForSecondMarker}">
							<m:icon shadowImageURL="http://www.google.com/mapfiles/shadow50.png" imageURL="http://www.google.com/mapfiles/markerB.png"/>
							<m:htmlInformationWindow htmlText="Iam Marker B"/>
						</m:marker>
					</m:map>
					<h:outputText value="Marker A status: #{map.firstMarkerStatus}" rendered="#{map.firstMarkerStatus ne null}"/> <br/>
					<h:outputText value="Marker B status: #{map.secondMarkerStatus}" rendered="#{map.secondMarkerStatus ne null}"/> <br/>
				</h:form>
			</f:subview>
            <%@include file="../templates/footer.jspf" %>
        </body>
    </f:view>
</html>