//
//  AppDelegate.m
//  NoMenuWindow
//
//  Created by noontec on 2017/12/5.
//  Copyright © 2017年 noontec. All rights reserved.
//
//  删除MainMenu.xib中的Window，然后用MainWindowController代替

#import "AppDelegate.h"
#import "MainWindowController.h"

@interface AppDelegate ()

@property (strong) MainWindowController *wc;
@end

@implementation AppDelegate

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _wc = [[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"];
    [_wc showWindow:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    _wc = nil;//释放控制器
}

@end
