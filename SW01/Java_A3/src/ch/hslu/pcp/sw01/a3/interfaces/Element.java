package ch.hslu.pcp.sw01.a3.interfaces;

public interface Element {
    int getValue();
    Element getNext();
    void setNext(Element next);
}
