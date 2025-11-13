.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/TimeTextUtil;
.super Ljava/lang/Object;
.source "TimeTextUtil.java"


# direct methods
.method public static getHourString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static getTimeAbbreviationString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    int-to-long p0, p1

    const-wide/32 v0, 0xea60

    .line 36
    div-long/2addr p0, v0

    long-to-int p0, p0

    .line 37
    rem-int/lit8 p1, p0, 0x3c

    .line 38
    div-int/lit8 p0, p0, 0x3c

    const-string p0, ""

    return-object p0
.end method
