//
//  TyphoonExtensionAppDelegate.m
//  Typhoon-iOS
//
//  Created by Mikhail Nikanorov on 08/11/2017.
//  Copyright © 2017 typhoonframework.org. All rights reserved.
//

#import "TyphoonExtensionAppDelegate.h"

static TyphoonExtensionAppDelegate *_extensionAppDelegate = nil;

@implementation TyphoonExtensionAppDelegate
+ (instancetype) shared
{
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
      _extensionAppDelegate = [[[self class] alloc] init];
  });
  return _extensionAppDelegate;
}

@end
