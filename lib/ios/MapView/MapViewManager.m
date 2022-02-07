#import <React/RCTUIManager.h>

@interface RCT_EXTERN_MODULE(AMapViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(mapType, MAMapType)
RCT_EXPORT_VIEW_PROPERTY(initialCameraPosition, NSDictionary)
RCT_EXPORT_VIEW_PROPERTY(distanceFilter, double)
RCT_EXPORT_VIEW_PROPERTY(headingFilter, double)

RCT_REMAP_VIEW_PROPERTY(myLocationEnabled, showsUserLocation, BOOL)
RCT_REMAP_VIEW_PROPERTY(buildingsEnabled, showsBuildings, BOOL)
RCT_REMAP_VIEW_PROPERTY(trafficEnabled, showTraffic, BOOL)
RCT_REMAP_VIEW_PROPERTY(indoorViewEnabled, showsIndoorMap, BOOL)
RCT_REMAP_VIEW_PROPERTY(compassEnabled, showsCompass, BOOL)
RCT_REMAP_VIEW_PROPERTY(scaleControlsEnabled, showsScale, BOOL)
RCT_REMAP_VIEW_PROPERTY(scrollGesturesEnabled, scrollEnabled, BOOL)
RCT_REMAP_VIEW_PROPERTY(zoomGesturesEnabled, zoomEnabled, BOOL)
RCT_REMAP_VIEW_PROPERTY(rotateGesturesEnabled, rotateEnabled, BOOL)
RCT_REMAP_VIEW_PROPERTY(tiltGesturesEnabled, rotateCameraEnabled, BOOL)
RCT_REMAP_VIEW_PROPERTY(minZoom, minZoomLevel, double)
RCT_REMAP_VIEW_PROPERTY(maxZoom, maxZoomLevel, double)

RCT_EXPORT_VIEW_PROPERTY(onAPress, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onAPressPoi, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onALongPress, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onACameraIdle, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onACameraMove, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onALoad, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onALocation, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onACallback, RCTBubblingEventBlock)

RCT_EXTERN_METHOD(moveCamera:(nonnull NSNumber *)reactTag position:(NSDictionary *)_ duration:(int)_)
RCT_EXTERN_METHOD(call:(nonnull NSNumber *)reactTag callerId:(double)_ name:(NSString *)_ args:(NSDictionary *)_)

@end
