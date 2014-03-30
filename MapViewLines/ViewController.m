//
//  ViewController.m
//  MapViewLines
//
//  Created by Jay Versluis on 30/03/2014.
//  Copyright (c) 2014 Pinkstone Pictures LLC. All rights reserved.
//

#import "ViewController.h"
#import "Pin.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // add a long press gesture
    UILongPressGestureRecognizer *recognizer = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(addPin:)];
    recognizer.minimumPressDuration = 0.5;
    [self.mapView addGestureRecognizer:recognizer];
}

// let the user add their own pins

- (void)addPin:(UIGestureRecognizer *)recognizer {
    
    if (recognizer.state != UIGestureRecognizerStateBegan) {
        return;
    }
    
    // convert touched position to map coordinate
    CGPoint userTouch = [recognizer locationInView:self.mapView];
    CLLocationCoordinate2D mapPoint = [self.mapView convertPoint:userTouch toCoordinateFromView:self.mapView];
    
    // and add it to our view and our array
    Pin *newPin = [[Pin alloc]initWithCoordinate:mapPoint];
    [self.mapView addAnnotation:newPin];
    // [self.allPins addObject:newPin];
    
    // [self drawPolylines];
    
}

@end
