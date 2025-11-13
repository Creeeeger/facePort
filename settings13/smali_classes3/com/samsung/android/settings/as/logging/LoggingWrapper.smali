.class public Lcom/samsung/android/settings/as/logging/LoggingWrapper;
.super Ljava/lang/Object;
.source "LoggingWrapper.java"


# direct methods
.method public static insertEventLogging(II)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public static insertEventLogging(IIJ)V
    .locals 0

    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method public static insertEventLogging(IILjava/lang/String;J)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(IIZ)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventLogging(I)V
    .locals 2

    const/16 v0, 0xfa6

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/16 p0, 0xfa7

    .line 31
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/16 p0, 0xfa9

    .line 33
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const/16 p0, 0xfa8

    .line 35
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    const/16 p0, 0xfaa

    .line 37
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne p0, v1, :cond_4

    const/16 p0, 0x1c56

    .line 39
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_4
    :goto_0
    return-void
.end method
