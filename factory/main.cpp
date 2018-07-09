#include <iostream>
class product{
public:
    virtual void show()=0;
};
class product_a:public product{
public:
    void show(){
        std::cout<<"product_a"<<std::endl;
    }
};
class product_b:public product{
public:
    void show(){
        std::cout<<"product_b"<<std::endl;
    }
};
class factory{
public:
    virtual product* create()=0;
};

class factory_a:public factory{
public:
    product* create(){
        return new product_a;
    }
};
class factory_b:public factory{
public:
    product* create(){
        return new product_b;
    }
};
int main() {
    factory_a* productA=new factory_a();
    factory_b* productB=new factory_b();
    productA->create()->show();
    productB->create()->show();
    std::cout << "Hello, World!" << std::endl;
    return 0;
}