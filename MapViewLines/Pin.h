//
//  Pin.h
//  Locations
//
//  Created by Jay Versluis on 20/03/2014.
//  Copyright (c) 2014 Pinkstone Pictures LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
@import MapKit;

@interface Pin : NSObject <MKAnnotation> 

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

- (id)initWithCoordinate:(CLLocationCoordinate2D)newCoordinate;

@end
