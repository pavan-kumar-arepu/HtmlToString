//
//  ViewController.m
//  HtmlToString
//
//  Created by Nilesh on 07/07/16.
//  Copyright © 2016 tcs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSError *error;
    NSString *googlePage = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"http://appledeveloper1524.blogspot.in/"]
                                                    encoding:NSASCIIStringEncoding
                                                       error:&error];
    NSAttributedString * attrStr = [[NSAttributedString alloc] initWithData:[googlePage dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];

    self.textView.attributedText = attrStr;

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
