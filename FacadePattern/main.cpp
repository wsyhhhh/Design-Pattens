#include <iostream>
class Shape{
public:
   virtual void draw()=0;
};
class Rectangle:public Shape{
public:
    void draw(){
        std::cout<<"rectangle draw"<<std::endl;
    }
};
class Square:public Shape{
public:
    void draw(){
        std::cout<<"square draw"<<std::endl;
    }
};
class Circle:public Shape{
public:
    void draw(){
        std::cout<<"Circle draw"<<std::endl;
    }
};
class ShapeMaker{
private:
    Shape* circle;
    Shape* square;
    Shape* rectangle;
public:
    ShapeMaker(){
        circle=new Circle;
        square=new Square;
        rectangle=new Rectangle;
    }
    void drawCircle(){
        circle->draw();
    }
    void drawRectangle(){
        rectangle->draw();
    }
    void drawSquare(){
        square->draw();
    }
};
int main() {
    ShapeMaker* sm=new ShapeMaker;
    sm->drawCircle();
    sm->drawRectangle();
    sm->drawSquare();
    return 0;
}