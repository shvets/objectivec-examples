// http://codeseekah.com/2012/09/12/compiling-objective-c-without-a-gui/
 
#import "Person.h"
int main() {
    Person *brad = [Person new];
    brad.name = "Brad Cox";
    [brad sayHello];
 
    Person *tom = [Person new];
    tom.name = "Tom Love";
    [tom sayHello];
}