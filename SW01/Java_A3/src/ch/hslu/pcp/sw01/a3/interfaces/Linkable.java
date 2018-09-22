package ch.hslu.pcp.sw01.a3.interfaces;

public interface Linkable<T> {
    T getNext();
    void setNext(T next);
}
