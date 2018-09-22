package ch.hslu.pcp.sw01.a3.impl;

import ch.hslu.pcp.sw01.a3.interfaces.Linkable;
import ch.hslu.pcp.sw01.a3.interfaces.Value;

public final class Element implements Linkable<Element>, Value<Integer> {

    private int value;
    private Element next;

    public Element(int value) {
        setValue(value);
    }

    @Override
    public void setValue(Integer value) {
        this.value = value;
    }

    @Override
    public Integer getValue() {
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
