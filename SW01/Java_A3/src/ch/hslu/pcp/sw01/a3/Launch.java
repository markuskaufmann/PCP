package ch.hslu.pcp.sw01.a3;

import ch.hslu.pcp.sw01.a3.impl.ElementFactory;
import ch.hslu.pcp.sw01.a3.impl.ElementImpl;
import ch.hslu.pcp.sw01.a3.impl.StackFactory;
import ch.hslu.pcp.sw01.a3.interfaces.Element;
import ch.hslu.pcp.sw01.a3.interfaces.Stack;

public final class Launch {

    public static void main(String[] args) {
        Stack myStack = StackFactory.createStack();
        System.out.println("myStack.size() = " + myStack.size());
        System.out.println("myStack.isEmpty() = " + myStack.isEmpty());
        myStack.print();
        myStack.top();
        myStack.push(ElementFactory.createElement(42));
        myStack.push(ElementFactory.createElement(77));
        myStack.push(ElementFactory.createElement(1));
        System.out.println("myStack.size() = " + myStack.size());
        System.out.println("myStack.isEmpty() = " + myStack.isEmpty());
        myStack.print();
        myStack.push(ElementFactory.createElement(33));
        myStack.pop();
        myStack.push(ElementFactory.createElement(33));
        myStack.print();
        Element e = myStack.top();
        System.out.println("top Element is " + e.getValue());
    }
}
