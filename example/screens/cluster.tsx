import { CameraEvent } from "lib/src/map-view";
import * as React from "react";
import { Component } from "react";
import { Cluster, MapView, Marker } from "react-native-amap3d";

export default class Clustering extends Component {
  static navigationOptions = { title: "Marker clustering" };
  status?: CameraEvent;
  cluster?: Cluster | null;
  mapView?: MapView | null;
  state = { markers: generateMarkers() };

  render() {
    return (
      <MapView
        ref={(ref) => (this.mapView = ref)}
        onALoad={() => this.mapView?.moveCamera({ zoom: 8 }, 100)}
        onACameraIdle={({ nativeEvent }) => {
          this.status = nativeEvent;
          this.cluster?.update(nativeEvent);
        }}
        onALongPress={() => this.setState({ markers: generateMarkers() })}
      >
        <Cluster
          onAPress={({ position }) => {
            this.mapView?.moveCamera(
              {
                target: position,
                zoom: this.status!.cameraPosition.zoom! + 1,
              },
              200
            );
          }}
          ref={(ref) => (this.cluster = ref)}
          points={this.state.markers}
          renderMarker={(item) => (
            <Marker
              key={item.properties.key}
              icon={require("../images/flag.png")}
              position={item.position}
            />
          )}
        />
      </MapView>
    );
  }
}

function generateMarkers(count = 1000) {
  return Array(count)
    .fill(0)
    .map((_, i) => ({
      position: { latitude: 39.5 + Math.random(), longitude: 116 + Math.random() },
      properties: { key: `Marker${i}` },
    }));
}
