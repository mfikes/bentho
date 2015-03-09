#import "BTHContextExecutor.h"
#import <JavaScriptCore/JavaScriptCore.h>

static NSThread* staticJavaScriptThread = nil;
static JSContext* staticContext = nil;

@implementation BTHContextExecutor

- (instancetype)init
{
    id me = [self initWithJavaScriptThread:(staticJavaScriptThread ? staticJavaScriptThread : [NSThread mainThread])
                          globalContextRef:staticContext.JSGlobalContextRef];
    staticJavaScriptThread = nil;
    staticContext = nil;
    return me;
}

+(void) setJavaScriptThread:(NSThread*)thread
{
    staticJavaScriptThread = thread;
}

+(void) setContext:(JSContext*)context
{
    staticContext = context;
}

@end
