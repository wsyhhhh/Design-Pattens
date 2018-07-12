#include <iostream>
#include <map>
class Shape{
public:
    virtual void draw()=0;
};
class Circle:public Shape{
private:
    std::string color;
    int x;
    int y;
    int radius;
public:
    Circle(std::string _color){
        this->color=_color;
    }
    void setx(int _x){
        this->x=_x;
    }
    void sety(int _y){
        this->y=y;
    }
    void setredius(int _radius){
        this->radius=_radius;
    }
    void draw(){
        std::cout<<"circle :draw color: "<<color<<",x:"<<x<<",y:"<<y<<",radius:"<<radius<<std::endl;
    }
};
class shapefactory{
private:
    static std::map<std::string,Circle> circleMap;
public:
    Circle* getcircle(std::string color){
        std::map<std::string,Circle>::iterator iter;
        iter=circleMap.find(color);
        Circle* circle;
        if(iter== circleMap.end()){
            circle=new Circle(color);
            circleMap.insert(std::pair<std::string ,Circle>(color,*circle));
            std::cout<<"Creating circle of color : "<<color<<std::endl;
        }else{
            *circle=iter->second;
        }
        return circle;
    }
};
int main() {
    shapefactory* sf=new shapefactory;
    std::string colors[]= { "Red", "Green", "Blue", "White", "Black" };
    for(int i=0;i<20;i++){
        Circle* circle=sf->getcircle(colors[i%5]);
        circle->setx(i*100);
        circle->sety(i*100);
        circle->setredius(i);
        circle->draw();
    }
    return 0;
}