#include <iostream>
class product{
public:
    virtual void beproducted()=0;
    virtual void beselled()=0;
};
class house:public product{
public:
    void beproducted(){
        std::cout<<"house be producted"<<std::endl;
    }
    void beselled(){
        std::cout<<"house be selled"<<std::endl;
    }
};
class ipod:public product{
public:
    void beproducted(){
        std::cout<<"ipod be producted"<<std::endl;
    }
    void beselled(){
        std::cout<<"ipod be selled"<<std::endl;
    }
};
class corp{
    //key is product object
private:
    product* pd;
public:
    corp(){};
    corp(product* _pd){
        this->pd=_pd;
    }
    void makemoney(){
        this->pd->beproducted();
        this->pd->beselled();
    }
};
class housecorp:public corp{
public:
    housecorp(house* ho):corp(ho){
    }
    void makemoney(){
        corp::makemoney();
        std::cout<<"housecorp makemoney"<<std::endl;
    }
};
class shanzhaicorp:public corp{
public:
    shanzhaicorp(product* _pd):corp(_pd){

    }
    void makemoney(){
        corp::makemoney();
        std::cout<<"i can makemoneyhhhh"<<std::endl;
    }
};
int main() {
    house* h=new house;
    std::cout << "---housecopr---" << std::endl;
    housecorp* hc=new housecorp(h);
    hc->makemoney();
    //corp and product can be extended easily
    std::cout << "---shanzhai---" << std::endl;
    shanzhaicorp*sz =new shanzhaicorp(new ipod);
    sz->makemoney();
    return 0;
}