#import "BTHContextExecutor.h"
#import <JavaScriptCore/JavaScriptCore.h>

static JSContext* staticContext = nil;

@implementation BTHContextExecutor

- (instancetype)init
{
    return [self initWithJavaScriptThread:[NSThread mainThread]
                         globalContextRef:staticContext.JSGlobalContextRef];
}

+(void) setContext:(JSContext*)context
{
    staticContext = context;
}

@end
