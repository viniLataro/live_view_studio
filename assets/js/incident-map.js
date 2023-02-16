import L from "leaflet";

class IncidentMap {
  constructor(element, center, markerClickedCallback) {
    this.map = L.map(element).setView(center, 13);

    L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
      attribution:
        '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
      maxZoom: 18,
      tileSize: 512,
      zoomOffset: -1,
    }).addTo(this.map);

    this.markerClickedCallback = markerClickedCallback;
  }

  addMarker(incident) {
    const marker = L.marker([incident.lat, incident.lng], {
      incidentId: incident.id,
    })
      .addTo(this.map)
      .bindPopup(incident.description);

    marker.on("click", (e) => {
      marker.openPopup();
      this.markerClickedCallback(e);
    });

    return marker;
  }

  highlightMarker(incident) {
    const marker = this.markerForIncident(incident);

    marker.openPopup();

    this.map.panTo(marker.getLatLng());
  }

  markerForIncident(incident) {
    let markerLayer;
    this.map.eachLayer((layer) => {
      if (layer instanceof L.Marker) {
        const markerPosition = layer.getLatLng();
        if (
          markerPosition.lat === incident.lat &&
          markerPosition.lng === incident.lng
        ) {
          markerLayer = layer;
        }
      }
    });

    return markerLayer;
  }
}

export default IncidentMap;
