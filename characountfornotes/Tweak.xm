
#import "CharacountForNotes.h"

%hook NotesDisplayController
- (void)viewWillAppear:(BOOL)arg1
{
	%orig;
	NSString * content = self.note.contentAsPlainText;
	NSString * contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
	self.title = contentLength;
}
- (void)viewDidDisappear:(BOOL)arg1
{
	%orig;
	self.title = nil;	
}

- (void)noteContentLayerContentDidChange:(NoteContentLayer *)arg1 updatedTitle:(BOOL)arg2
{
	%orig;
	NSString * content = arg1.textView.text;
	NSString * contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
	self.title = contentLength;
	
}

%end