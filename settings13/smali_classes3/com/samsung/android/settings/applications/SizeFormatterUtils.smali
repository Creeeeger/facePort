.class public Lcom/samsung/android/settings/applications/SizeFormatterUtils;
.super Ljava/lang/Object;
.source "SizeFormatterUtils.java"


# direct methods
.method static getFormattedNumberWithUnit(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 23
    sget p1, Lcom/android/settings/R$string;->string_mb:I

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x400

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    .line 25
    sget p1, Lcom/android/settings/R$string;->string_byte:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p3, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0xf4240

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    .line 27
    sget p1, Lcom/android/settings/R$string;->string_kb:I

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x3b9aca00

    cmp-long p1, p1, v3

    if-gez p1, :cond_3

    .line 29
    sget p1, Lcom/android/settings/R$string;->string_mb:I

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 31
    :cond_3
    sget p1, Lcom/android/settings/R$string;->string_gb:I

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getNumberFormattedString(JLjava/math/RoundingMode;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getFormattedNumberWithUnit(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNumFormattedSizeString(J)Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getNumberFormattedString(JLjava/math/RoundingMode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNumberFormattedString(JLjava/math/RoundingMode;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getNumberFormattedString(JLjava/math/RoundingMode;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNumberFormattedString(JLjava/math/RoundingMode;Z)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 50
    new-instance p0, Ljava/text/DecimalFormat;

    invoke-direct {p0}, Ljava/text/DecimalFormat;-><init>()V

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    .line 53
    new-instance p2, Ljava/text/DecimalFormat;

    invoke-direct {p2}, Ljava/text/DecimalFormat;-><init>()V

    .line 54
    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_1
    const-wide/32 v2, 0xf4240

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 56
    new-instance p2, Ljava/text/DecimalFormat;

    invoke-direct {p2}, Ljava/text/DecimalFormat;-><init>()V

    .line 57
    div-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_2
    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p0, v0

    if-gez v0, :cond_7

    const-wide/32 v0, 0x100000

    .line 60
    div-long v0, p0, v0

    long-to-int p2, v0

    const/16 v0, 0xa

    if-ge p2, v0, :cond_3

    .line 62
    new-instance p2, Ljava/text/DecimalFormat;

    const-string p3, "0.##"

    invoke-direct {p2, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/16 v0, 0x64

    if-ge p2, v0, :cond_5

    if-eqz p3, :cond_4

    const-string p2, "##.0"

    goto :goto_0

    :cond_4
    const-string p2, "#0.#"

    .line 65
    :goto_0
    new-instance p3, Ljava/text/DecimalFormat;

    invoke-direct {p3, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    const-string p2, "###.0"

    goto :goto_1

    :cond_6
    const-string p2, "##0"

    .line 68
    :goto_1
    new-instance p3, Ljava/text/DecimalFormat;

    invoke-direct {p3, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object p2, p3

    .line 70
    :goto_3
    sget-object p3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p2, p3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    long-to-double p0, p0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v0

    .line 71
    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_7
    if-eqz p3, :cond_8

    const-string p3, "##0.0"

    goto :goto_4

    :cond_8
    const-string p3, "##0.#"

    .line 74
    :goto_4
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    long-to-double p0, p0

    const-wide/high16 p2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, p2

    .line 76
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method public static getUnitFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 89
    sget p1, Lcom/android/settings/R$string;->megabyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 91
    sget p1, Lcom/android/settings/R$string;->byteShort:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 93
    sget p1, Lcom/android/settings/R$string;->kilobyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x3b9aca00

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    .line 95
    sget p1, Lcom/android/settings/R$string;->megabyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 97
    :cond_3
    sget p1, Lcom/android/settings/R$string;->gigabyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
