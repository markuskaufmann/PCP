package ch.hslu.pcp.sw01.a3.impl;

import ch.hslu.pcp.sw01.a3.interfaces.Stack;

public final class StackFactory {

    public static Stack createStack() {
        return new StackImpl();
    }
}
