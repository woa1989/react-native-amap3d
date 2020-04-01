#import "AMapView.h"
#import "AMapCallout.h"

@interface AMapMarker : UIView

@property(nonatomic, copy) RCTBubblingEventBlock onAPress;
@property(nonatomic, copy) RCTBubblingEventBlock onAInfoWindowPress;
@property(nonatomic, copy) RCTBubblingEventBlock onADragStart;
@property(nonatomic, copy) RCTBubblingEventBlock onADrag;
@property(nonatomic, copy) RCTBubblingEventBlock onADragEnd;

- (MAAnnotationView *)annotationView;
- (MAPointAnnotation *)annotation;
- (void)setActive:(BOOL)active;
- (void)setMapView:(AMapView *)mapView;
- (void)lockToScreen:(int)x y:(int)y;

@end
