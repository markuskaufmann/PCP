package ch.hslu.pcp.sw01.a3.impl;

import ch.hslu.pcp.sw01.a3.interfaces.Element;
import ch.hslu.pcp.sw01.a3.interfaces.Stack;

public final class StackImpl implements Stack {

    private static final String PRINT_EMPTY     = "print - Stack is empty";
    private static final String PRINT_CONTAINS  = "print - Stack contains: ";
    private static final String PRINT_TOP       = "top Element = ";

    private Element top;

    StackImpl() {
    }

    @Override
    public void push(Element e) {
        if(this.top != null) {
            e.setNext(this.top);
        }
        this.top = e;
    }

    @Override
    public Element top() {
        return this.top;
    }

    @Override
    public boolean pop() {
        if(this.top == null) {
            return false;
        }
        this.top = this.top.getNext();
        return true;
    }

    @Override
    public void print() {
        if(isEmpty()) {
            System.out.println(PRINT_EMPTY);
            return;
        }
        final StringBuilder builder = new StringBuilder(PRINT_CONTAINS);
        Element current = this.top;
        while(current != null) {
            builder.append(current.toString());
            builder.append(", ");
            current = current.getNext();
        }
        builder.append(PRINT_TOP);
        builder.append(this.top.toString());
        System.out.println(builder.toString());
    }

    @Override
    public boolean isEmpty() {
        return this.top == null;
    }

    @Override
    public int size() {
        int counter = 0;
        Element current = this.top;
        while(current != null) {
            counter += 1;
            current = current.getNext();
        }
        return counter;
    }
}
