package net.nenko.data;

public enum EnumData {
    ENUM_ONE(1),
    ENUM_TWO(2),
    ENUM_THREE(3);

    private int value;

    private EnumData(int value) {
        this.value = value;
    }
}
