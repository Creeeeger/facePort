.class public abstract Lcom/samsung/android/settings/applications/SizeFormatterUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getGbFormattedSizeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/applications/SizeFormatterUtils;->getNumberFormattedString(JLjava/math/RoundingMode;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const v2, 0x7f142dd8

    if-nez v1, :cond_0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x400

    cmp-long v1, p1, v3

    if-gez v1, :cond_1

    const p1, 0x7f142dd5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0xf4240

    cmp-long v1, p1, v3

    if-gez v1, :cond_2

    const p1, 0x7f142dd7

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x3b9aca00

    cmp-long p1, p1, v3

    if-gez p1, :cond_3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const p1, 0x7f142dd6

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getNumberFormattedString(JLjava/math/RoundingMode;)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    new-instance p0, Ljava/text/DecimalFormat;

    invoke-direct {p0}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    new-instance p2, Ljava/text/DecimalFormat;

    invoke-direct {p2}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-wide/32 v2, 0xf4240

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    new-instance p2, Ljava/text/DecimalFormat;

    invoke-direct {p2}, Ljava/text/DecimalFormat;-><init>()V

    div-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p0, v0

    if-gez v0, :cond_5

    const-wide/32 v0, 0x100000

    div-long v0, p0, v0

    long-to-int p2, v0

    const/16 v0, 0xa

    if-ge p2, v0, :cond_3

    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "0.##"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    if-ge p2, v0, :cond_4

    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "#0.#"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "##0"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p2, v0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    long-to-double p0, p0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    long-to-double p0, p0

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
