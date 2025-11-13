.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwFeature;
.super Ljava/lang/Object;
.source "DwFeature.java"


# direct methods
.method public static is(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "0"

    .line 61
    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
