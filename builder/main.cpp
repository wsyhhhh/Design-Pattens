#include <iostream>
#include <vector>
class Item{
public:
    void setname(std::string s_name){ name=s_name; }
    void setprice(int s_price){price=s_price;}
    void setpacking(std::string s_packing){packing=s_packing;}
    int getprice(){
        return price;
    }
    std::string getname(){
        return name;
    }
    std::string getpacking(){
        return packing;
    }

private:
    std::string name;
    int price;
    std::string packing;
};
class meal{
private:
    std::vector<Item> items;
public:
    void addItem(Item* item){
        items.push_back(*item);
    }
    float getCost(){
        int cost=0;
        std::vector<Item>::iterator iter;
        for(iter=items.begin();iter!=items.end();iter++){
            cost+=iter->getprice();
        }
        return cost;
    }
    void showItems(){
        std::vector<Item>::iterator iter;
        for(iter=items.begin();iter!=items.end();iter++){
            std::cout<<"Item : "<<iter->getname();
            std::cout<<", packing : "<<iter->getpacking();
            std::cout<<", Price : "<<iter->getprice()<<std::endl;
        }
    }
};
class MealBuilder{
public:
    meal* prepareVegMeal(){
        meal* meal1=new meal;
        Item* Veg=new Item;
        Veg->setname("Vegtable burger");
        Veg->setprice(25);
        Veg->setpacking("Wrapper");
        meal1->addItem(Veg);

        Item* Coke=new Item;
        Coke->setname("Coke");
        Coke->setprice(30);
        Coke->setpacking("Bottle");
        meal1->addItem(Coke);
        return meal1;
    }
    meal* prepareNoneVegMeal(){
        meal* meal1=new meal;
        Item *Veg=new Item();
        Veg->setname("Chicken burger");
        Veg->setprice(35);
        Veg->setpacking("Wrapper");
        meal1->addItem(Veg);

        Item* Pespi=new Item;
        Pespi->setname("Pespi");
        Pespi->setprice(32);
        Pespi->setpacking("Bottle");
        meal1->addItem(Pespi);
        return meal1;
    }
};
int main() {
    MealBuilder* mb=new MealBuilder;
    meal* vegmeal=mb->prepareVegMeal();
    vegmeal->showItems();
    std::cout<<vegmeal->getCost()<<std::endl;
    meal* nonvegmeal=mb->prepareNoneVegMeal();
    nonvegmeal->showItems();
    std::cout<<nonvegmeal->getCost()<<std::endl;
    return 0;
}