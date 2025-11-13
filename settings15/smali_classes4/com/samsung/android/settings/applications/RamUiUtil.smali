.class public abstract Lcom/samsung/android/settings/applications/RamUiUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getDecimalValueFormatted(J)D
    .locals 5

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getNumberFormattedString(JLjava/math/RoundingMode;)Ljava/lang/String;

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

    invoke-static {v0}, Lcom/samsung/android/settings/applications/RamUiUtil;->getFormatLocaleDouble(Ljava/lang/String;)D

    move-result-wide p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    goto :goto_0

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

    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
