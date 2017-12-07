//
//  MainWindowController.m
//  NoMenuWindow
//
//  Created by noontec on 2017/12/5.
//  Copyright © 2017年 noontec. All rights reserved.
//

#import "MainWindowController.h"

@interface MainWindowController ()

@property (weak) IBOutlet NSTextField *labLang;
@end

@implementation MainWindowController

- (void)dealloc
{
    NSLog(@"MainWindowController -- 释放");
}

- (void)windowDidLoad {
    [super windowDidLoad];
    _labLang.stringValue = NSLocale.preferredLanguages.firstObject;
    _labLang.objectValue = [[NSBundle mainBundle] localizations];
    NSLog(@"%@", NSLocale.preferredLanguages);
    NSLog(@"%@", [[NSBundle mainBundle] localizations]);
    NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"]);
//    NSLog(@"%@", [NSLocale availableLocaleIdentifiers]);
    NSLog(@"%@", NSBundle.mainBundle.infoDictionary);//[@"CFBundleVersion"]
}

- (IBAction)showModal:(id)sender {
}
@end
