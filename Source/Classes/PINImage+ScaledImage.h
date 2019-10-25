//
//  UIImage+ScaledImage.h
//  Pods
//
//  Created by Michael Schneider on 2/9/17.
//
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

#import "PINRemoteImageMacros.h"

@interface PINImage (PINScaledImage)

- (PINImage *)pin_scaledImageForKey:(NSString *)key;
+ (PINImage *)pin_scaledImageForImage:(PINImage *)image withKey:(NSString *)key;

@end
