package net.nenko.data;

/**
 * Created by O. Nenko
 *
 * Avoid specific types where possible, this structure for is for JSON transfer
 */
public class WebTableRecord {
    public int numId;
    public String strId;
    public int date;
    public long dateTimeMs;
    public double realNum;
    public EnumData enumData;
}
