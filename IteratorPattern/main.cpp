#include <iostream>
static std::string names[] = {"Robert" , "John" ,"Julie" , "Lora"};
class Iterator{
public:
    virtual bool hasnext(){};
    virtual std::string next(){};
};

class Container{
public:
    virtual Iterator* getIterator(){};
};
class NameIterator: public Iterator{
private:
    int index=0;
public:
    bool hasnext(){
        int len= sizeof(names)/sizeof(names[0]);
        if(index < len){
            return true;
        }
        return false;
    }
    std::string next(){
        std::string s;
        if(this->hasnext()){
            s=names[index++];
        }
        return s;
    }
};
class NameRepository:public Container{
public:
    Iterator* getIterator(){
        return new NameIterator;
    }
};


int main() {
    NameRepository* nameRepository=new NameRepository;
    for(Iterator* iter=nameRepository->getIterator();iter->hasnext();){
        std::string name=iter->next();
        if(name.empty()){
            std::cout<<"end "<<std::endl;
            return 0;
        }

        std::cout << "Name : " << name<<std::endl;
    }
    return 0;
}