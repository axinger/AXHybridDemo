//
//  DemoCDVCommandDelegate.m
//  AXHybridDemo
//
//  Created by 小星星吃KFC on 2021/9/3.
//

#import "DemoCDVWebViewController.h"
#import <WebKit/WebKit.h>

#import <Cordova/CDVCommandDelegateImpl.h>
#import <Cordova/CDVCommandQueue.h>

@interface DemoCDVCommandDelegate : CDVCommandDelegateImpl
@end

@interface DemoCDVCommandQueue : CDVCommandQueue
@end


@implementation DemoCDVWebViewController
- (id)initWithNibName:(NSString*)nibNameOrNil bundle:(NSBundle*)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Uncomment to override the CDVCommandDelegateImpl used
        _commandDelegate = [[DemoCDVCommandDelegate alloc] initWithViewController:self];
        // Uncomment to override the CDVCommandQueue used
        // _commandQueue = [[DemoCDVCommandQueue alloc] initWithViewController:self];
        
        self.configFile = [NSBundle.mainBundle pathForResource:@"CordovaResource.bundle/config.xml" ofType:nil];
        
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Uncomment to override the CDVCommandDelegateImpl used
        // _commandDelegate = [[DemoCDVCommandDelegate alloc] initWithViewController:self];
        // Uncomment to override the CDVCommandQueue used
        // _commandQueue = [[DemoCDVCommandQueue alloc] initWithViewController:self];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - extension delegate
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    
}

#pragma mark View lifecycle

- (void)viewWillAppear:(BOOL)animated
{
    // View defaults to full size.  If you want to customize the view's size, or its subviews (e.g. webView),
    // you can do so here.
    
    [super viewWillAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view from its nib.
    //    if(![kLoadModel isEqualToString:@"offline"]){
    //        [self.webViewEngine loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:kDomainUrl]]];
    //    }
    //    [self.webViewEngine loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:kDomainUrl]]];
    
    
    
    
}

/* Comment out the block below to over-ride */

/*
 - (UIWebView*) newCordovaViewWithFrame:(CGRect)bounds
 {
 return[super newCordovaViewWithFrame:bounds];
 }
 
 // CB-12098
 #if __IPHONE_OS_VERSION_MAX_ALLOWED < 90000
 - (NSUInteger)supportedInterfaceOrientations
 #else
 - (UIInterfaceOrientationMask)supportedInterfaceOrientations
 #endif
 {
 return [super supportedInterfaceOrientations];
 }
 
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
 {
 return [super shouldAutorotateToInterfaceOrientation:interfaceOrientation];
 }
 
 - (BOOL)shouldAutorotate
 {
 return [super shouldAutorotate];
 }
 */
@end
@implementation DemoCDVCommandDelegate

/* To override the methods, uncomment the line in the init function(s)
 in MainViewController.m
 */

#pragma mark CDVCommandDelegate implementation

- (id)getCommandInstance:(NSString*)className
{
    return [super getCommandInstance:className];
}

- (NSString*)pathForResource:(NSString*)resourcepath
{
    //    return [super pathForResource:resourcepath];
    //
    //    NSURL *URL = [NSBundle.mainBundle URLForResource:@"CordovaConfig.bundle/www/index.html" withExtension:nil];
    
    return [NSBundle.mainBundle pathForResource:@"CordovaResource.bundle/www/index.html" ofType:nil];
}

@end

@implementation DemoCDVCommandQueue

/* To override, uncomment the line in the init function(s)
 in MainViewController.m
 */
- (BOOL)execute:(CDVInvokedUrlCommand*)command
{
    return [super execute:command];
}

@end
