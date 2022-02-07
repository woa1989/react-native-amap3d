import * as React from "react";
import { MapView, Marker } from "react-native-amap3d";

export default () => (
  <MapView>
    <Marker
      draggable
      position={{ latitude: 39.806901, longitude: 116.397972 }}
      icon={require("../images/flag.png")}
      onAPress={() => alert("onAPress")}
      onADragEnd={({ nativeEvent }) =>
        alert(`onDragEnd: ${nativeEvent.latitude}, ${nativeEvent.longitude}`)
      }
    />
  </MapView>
);
