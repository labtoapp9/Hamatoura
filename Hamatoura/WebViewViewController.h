//
//  WebViewViewController.h
//  Hamatoura
//
//  Created by Shadyk on 3/1/15.
//  Copyright (c) 2015 LabToApp. All rights reserved.
//

#import "BaseViewController.h"

@interface WebViewViewController : BaseViewController
@property (nonatomic, retain) NSURL *url;

@property (nonatomic, retain) NSString *htmlString;
@property (nonatomic, retain) NSURL *baseURL;
@property (nonatomic, retain) NSURLRequest *request;

@property (nonatomic,strong) IBOutlet UIWebView *webview;
@end
