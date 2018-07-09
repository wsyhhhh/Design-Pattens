#include <iostream>
class Shape{
public:
    //Shape(){
    //    std::cout<<"shape init "<<std::endl;
    //};
    virtual void draw()=0;
};
class Color{
public:
    //Color(){
    //    std::cout<<"color init "<<std::endl;
    //};
    virtual void fill()=0;
};
class Rectangle:public Shape{
public:
    void draw(){
        std::cout<<"draw Rectangle"<<std::endl;
    }
};
class Square:public Shape{
public:
    void draw(){
        std::cout<<"draw Square"<<std::endl;
    }
};
class Circle:public Shape{
public:
    void draw(){
        std::cout<<"draw Circle"<<std::endl;
    }
};
class Red:public Color{
public:
    void fill(){
        std::cout<<"red fill"<<std::endl;
    }
};
class Yellow:public Color{
public:
    void fill(){
        std::cout<<"Yellow fill"<<std::endl;
    }
};
class Blue:public Color{
public:
    Blue(){};
    void fill(){
        std::cout<<"Blue fill"<<std::endl;
    }
};
class AbstractFactory{
public:
    virtual Color* getcolor(std::string color)=0;
    virtual Shape* getshape(std::string shape)=0;
};
class ColorFactory:public AbstractFactory{
public:
    Shape* getshape(std::string shape){
        return nullptr;
    }
    Color* getcolor(std::string color){
        if(color.empty())
            return nullptr;
        if(color=="Red"){
            Color* color_r=new Red;
            return color_r;
        } else if(color=="Yellow"){
            Color* color_y=new Yellow;
            return color_y;
        } else if(color=="Blue"){
            Color *color_b=new Blue;
            return color_b;
        }
        return nullptr;
    }
};
class ShapeFactory:public AbstractFactory{
public:
    Color* getcolor(std::string color){
        return nullptr;
    }
    Shape* getshape(std::string shape){
        if(shape.empty())
            return nullptr;
        if(shape=="Rectangle"){
            Shape* shape_r=new Rectangle;
            return shape_r;
        }
        else  if(shape=="Square"){
            Shape* shape_s=new Square;
            return shape_s;
        }
        else if(shape=="Circle"){
            Shape* shape_c=new Circle;
            return shape_c;
        }
        return nullptr;
    }
};
//class FactoryProducer{
//public:
//    static AbstractFactory getfactory(std::string choice){
//        if(choice=="shape")
//            return new ShapeFactory();
//        else if(choice=="color")
//            return new ColorFactory;
//    }
//};
int main() {
    ShapeFactory* shapefactory1=new ShapeFactory();
    ColorFactory* colorfactory1=new ColorFactory();
    Shape* shape1=shapefactory1->getshape("Circle");
    shape1->draw();
    Shape* shape2=shapefactory1->getshape("Square");
    shape2->draw();
    Shape* shape3=shapefactory1->getshape("Rectangle");
    shape3->draw();
    Color* color1=colorfactory1->getcolor("Red");
    color1->fill();
    Color* color2=colorfactory1->getcolor("Yellow");
    color2->fill();
    Color* color3=colorfactory1->getcolor("Blue");
    color3->fill();
    return 0;
}