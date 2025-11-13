.class public Lcom/samsung/android/settings/applications/RamUiUtil;
.super Ljava/lang/Object;
.source "RamUiUtil.java"


# direct methods
.method public static getBinarySizeFromDecimalSize(D)J
    .locals 3

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    :goto_0
    mul-double/2addr p0, v0

    goto :goto_1

    :cond_0
    const-wide v0, 0x412e848000000000L    # 1000000.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_1

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    goto :goto_0

    :cond_1
    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_2

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    goto :goto_0

    :cond_2
    :goto_1
    double-to-long p0, p0

    return-wide p0
.end method

.method public static getDecimalValueFormatted(J)D
    .locals 5

    .line 34
    invoke-static {p0, p1}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getNumFormattedSizeString(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_0
    long-to-double v1, p0

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    long-to-double p0, p0

    div-double/2addr p0, v3

    goto :goto_1

    :cond_1
    const-wide/32 v1, 0xf4240

    cmp-long v1, p0, v1

    if-gez v1, :cond_2

    .line 40
    invoke-static {v0}, Lcom/samsung/android/settings/applications/RamUiUtil;->getFormatLocaleDouble(Ljava/lang/String;)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    :goto_0
    mul-double/2addr p0, v0

    goto :goto_1

    :cond_2
    const-wide/32 v1, 0x3b9aca00

    cmp-long p0, p0, v1

    if-gez p0, :cond_3

    .line 42
    invoke-static {v0}, Lcom/samsung/android/settings/applications/RamUiUtil;->getFormatLocaleDouble(Ljava/lang/String;)D

    move-result-wide p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    goto :goto_0

    .line 44
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/settings/applications/RamUiUtil;->getFormatLocaleDouble(Ljava/lang/String;)D

    move-result-wide p0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    goto :goto_0

    :goto_1
    return-wide p0
.end method

.method public static getFormatLocaleDouble(Ljava/lang/String;)D
    .locals 2

    .line 52
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getUsedSize(Landroid/content/Context;JJJ)J
    .locals 0

    .line 19
    invoke-static {p3, p4}, Lcom/samsung/android/settings/applications/RamUiUtil;->getDecimalValueFormatted(J)D

    move-result-wide p3

    .line 20
    invoke-static {p5, p6}, Lcom/samsung/android/settings/applications/RamUiUtil;->getDecimalValueFormatted(J)D

    move-result-wide p5

    .line 21
    invoke-static {p1, p2}, Lcom/samsung/android/settings/applications/RamUiUtil;->getDecimalValueFormatted(J)D

    move-result-wide p0

    sub-double/2addr p0, p3

    sub-double/2addr p0, p5

    const-wide/16 p2, 0x0

    cmpg-double p4, p0, p2

    if-gez p4, :cond_0

    move-wide p0, p2

    .line 26
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/applications/RamUiUtil;->getBinarySizeFromDecimalSize(D)J

    move-result-wide p0

    return-wide p0
.end method
