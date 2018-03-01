// Hello-World.m
// Simple Programs
//
// Copyright © 2018 Ethan Dye. All rights reserved.

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSLog (@"Hello, World!");
    [pool drain];
    return 0;
}
