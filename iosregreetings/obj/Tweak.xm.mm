#line 1 "Tweak.xm"
#import <notify.h>

#define ACCESSBILITY @"/var/mobile/Library/Preferences/com.apple.Accessibility.plist"

extern "C" BOOL isCapable() {
	
	if(kCFCoreFoundationVersionNumber >= kCFCoreFoundationVersionNumber_iOS_5_0 && [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"])
		return YES;
	return NO;
}

extern "C" BOOL isEnabled() {
	
	NSMutableDictionary * dictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:ACCESSBILITY];
	BOOL result = [[dictionary objectForKey:@"DefaultRouteForCallPreference"] intValue] == 0 ? NO:YES;
	return  result;

}

extern @"C" void getStateFast() {

	return isEnabled();
}

extern @"C" void setState(BOOL enabled) {

	NSMutableDictionary * dictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:ACCESSBILITY];
	[dictionary setObject:[NSNumber numberWithInt:(enabled ?2:0)] forKey:@"DefaultRouteForCallPreference"];
	[dictionary writeToFile:ACCESSBILITY atomically:YES];
	notify_POST("com.apple.accessibility.defaultrouteforcall");
}


extern "C" float getDelayTime() {
	return 0.6f;
}




