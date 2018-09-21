package ch.hslu.pcp.sw01.a3.impl;

import ch.hslu.pcp.sw01.a3.interfaces.Element;

public final class ElementImpl implements Element {

    private final int value;
    private Element next;

    ElementImpl(int value) {
        this.value = value;
    }

    @Override
    public int getValue() {
        return this.value;
    }

    @Override
    public Element getNext() {
        return this.next;
    }

    @Override
    public void setNext(Element next) {
        this.next = next;
    }

    @Override
    public String toString() {
        return String.valueOf(this.value);
    }
}
