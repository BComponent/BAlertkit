#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "BPopupConfigure.h"
#import "BPopupInterface.h"
#import "BPopupsManager.h"

FOUNDATION_EXPORT double BAlertKitVersionNumber;
FOUNDATION_EXPORT const unsigned char BAlertKitVersionString[];

