# HtmlToString
Convert HTML Code to TextView using NSAttributed String:

Input: Either HTML Link or HTML Code 

Need to provide input to NSAttributedString Object

     NSString *myOwnBlogName = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"http://appledeveloper1524.blogspot.in/"]
                                                    encoding:NSASCIIStringEncoding
                                                       error:&error];
    NSAttributedString * attrStr = [[NSAttributedString alloc] initWithData:[myOwnBlogName dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];

    self.textView.attributedText = attrStr;
    
    
Note: This Project was built on XCode 8.0 Beta..This project will not open less than XCode 8.0. So you can above logic in your project to convert HTML Code to TextField.
