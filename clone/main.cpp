#include <iostream>
class AdvTemplate{
private:
    std::string advSubject="xidian bank activity";
    std::string advContext="attentation: if you take part in this activity ,you will get 100000";
public:
    AdvTemplate(){};
    std::string getAdvSubject(){
        return this->advSubject;
    }
    std::string getAdvContext(){
        return this->advContext;
    }
};
class Mail_clone{
    virtual Mail_clone *clone(AdvTemplate* advTemplate)=0;
};
class Mail:public Mail_clone {
private:
    std::string receiver;
    std::string subject;
    std::string appellation;
    std::string context;
    std::string tail;
public:
    Mail(AdvTemplate* advTemplate) {
        this->context = advTemplate->getAdvContext();
        this->subject = advTemplate->getAdvSubject();
    }

    virtual Mail_clone *clone(AdvTemplate* advTemplate) {
        Mail *mail = new Mail(advTemplate);
        *mail = *this;
        return (Mail_clone*)mail;
    }

    std::string getreceiver() {
        return receiver;
    }

    void setreceiver(std::string receiver) {
        this->receiver = receiver;
    }

    std::string getsubject() {
        return subject;
    }

    void setsubject(std::string subject) {
        this->subject = subject;
    }

    std::string getapplication() {
        return appellation;
    }

    void setapplication(std::string application) {
        this->appellation = application;
    }

    std::string getcontext() {
        return context;
    }
    void setcontext(std::string context){
        this->context=context;
    }
    std::string gettail(){
        return tail;
    }
    void settail(std::string tail){
        this->tail=tail;
    }
};
static void sendmail(Mail* mail){
    std::cout<<"theme "<<mail->getsubject()<<" receiver "<<mail->getreceiver()<<" send success"<<std::endl;
}
int main() {
    int maxcount=6;
    int i=0;
    AdvTemplate* temp=new AdvTemplate;
    Mail* mail=new Mail(temp);
    mail->settail("own by xidian");
    while(i<maxcount){
        Mail* clonemail= static_cast<Mail *>(mail->clone(temp));
        clonemail->setreceiver(std::to_string(i)+"@qq.com");
        sendmail(clonemail);
        i++;
    }
    return 0;
}