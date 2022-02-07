#import <React/RCTUIManager.h>

@interface RCT_EXTERN_MODULE(AMapMarkerManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(latLng, CLLocationCoordinate2D)
RCT_EXPORT_VIEW_PROPERTY(centerOffset, CGPoint)
RCT_EXPORT_VIEW_PROPERTY(draggable, BOOL)
RCT_EXPORT_VIEW_PROPERTY(zIndex, int)
RCT_EXPORT_VIEW_PROPERTY(icon, NSDictionary)

RCT_EXPORT_VIEW_PROPERTY(onAPress, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onADragStart, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onADrag, RCTBubblingEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onADragEnd, RCTBubblingEventBlock)

RCT_EXTERN_METHOD(update:(nonnull NSNumber *)reactTag)

@end
