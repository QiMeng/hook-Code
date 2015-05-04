#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)application 
{
%orig;
UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"黑掉你的手机" message:nil delegate:nil cancelButtonTitle:@"YES" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
}
%end
