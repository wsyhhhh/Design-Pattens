#include <iostream>
class schoolreport{
public:
    virtual void report()=0;
    virtual void sign(std::string name)=0;
};
class fourthgradeschoolreport:public schoolreport{
public:
    void report(){
        std::cout<<"liter  is 62,math high is 65,science high is 98"<<std::endl;
    }
    void sign(std::string name){
        std::cout<<"father sign :"<<name<<std::endl;
    }
};
class Decorator:public schoolreport{
protected:
    schoolreport* sr;
public:
    Decorator(){};
    Decorator(schoolreport* sr){
        this->sr=sr;
    }
    void report(){
        this->sr->report();
    }
    void sign(std::string name){
        this->sr->sign(name);
    }
};
class highscoredecorator:public Decorator{
public:
    highscoredecorator(schoolreport* sr){
       this->sr =sr;
    }
    void report(){
        this->reporthighscore();
        Decorator::report();
    }
private:
    void reporthighscore(){
        std::cout<<"liter high is 75,math high is78,science high is 80"<<std::endl;
    }

};
class sortdecorator:public  Decorator{
public:
    sortdecorator(schoolreport* sr){
        this->sr=sr;
    }
    void report(){
        this->reportsort();
        Decorator::report();
    }
private:
    void reportsort(){
        std::cout<<"rank 38"<<std::endl;
    }

};
int main() {
    schoolreport *sr=new fourthgradeschoolreport();
    sr= new highscoredecorator(sr);
    sr=new sortdecorator(sr);
    sr->report();
    sr->sign("wsy");
    return 0;
}