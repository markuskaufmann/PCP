package ch.hslu.pcp.sw01.a3.impl;

import ch.hslu.pcp.sw01.a3.interfaces.Element;

public final class ElementFactory {

    public static Element createElement(final int value) {
        return new ElementImpl(value);
    }
}
