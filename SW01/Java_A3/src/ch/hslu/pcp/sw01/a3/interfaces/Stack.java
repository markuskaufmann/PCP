package ch.hslu.pcp.sw01.a3.interfaces;

public interface Stack {
    void push(Element e);
    Element top();
    boolean pop();
    void print();
    boolean isEmpty();
    int size();
}
