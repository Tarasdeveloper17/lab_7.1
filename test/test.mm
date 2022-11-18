
#include "header.h"
#import <XCTest/XCTest.h>

@interface test : XCTestCase

@end

@implementation test

- (void)test_lab {
    srand((unsigned)time(NULL));
    int rowCount = 8;
    int colCount = 7;
    int S=0;
    int k=0;
    int **c = new int*[rowCount];
    for (int i=0; i<rowCount; i++)
    c[i] = new int[colCount];
    Calc(c, rowCount, colCount, S, k);
    
    XCTAssertNotEqual( S, 1);
    
    for (int i=0; i<rowCount; i++)
    delete [] c[i];
    delete [] c;
}



@end

