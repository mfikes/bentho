#import "BTHContextExecutor.h"
#import <JavaScriptCore/JavaScriptCore.h>

static NSThread* staticJavaScriptThread = nil;
static JSContextRef staticContext;

@implementation BTHContextExecutor

- (instancetype)init
{
    id me = [self initWithJavaScriptThread:(staticJavaScriptThread ? staticJavaScriptThread : [NSThread mainThread])
                          globalContextRef:staticContext];
    staticJavaScriptThread = nil;
    JSGlobalContextRelease(staticContext);
    return me;
}

+(void) setJavaScriptThread:(NSThread*)thread
{
    staticJavaScriptThread = thread;
}

+(void) setContext:(JSGlobalContextRef)context
{
    staticContext = JSGlobalContextRetain(context);
}

@end
