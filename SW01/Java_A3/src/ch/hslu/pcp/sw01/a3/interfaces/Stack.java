package ch.hslu.pcp.sw01.a3.interfaces;

public interface Stack<T> {
    void push(T element);
    T top();
    boolean pop();
    void print();
    boolean isEmpty();
    int size();
}
