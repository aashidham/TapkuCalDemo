//
//  TapkuCalendarDemoAppDelegate.h
//  TapkuCalendarDemo
//
//  Created by Ben Pearson on 8/01/11.
//  Copyright 2011 Developing in the Dark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarController.h"

@interface TapkuCalendarDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	CalendarController *calendarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) CalendarController *calendarController;

@end

