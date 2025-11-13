.class public final Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    const/4 v0, 0x1

    if-gez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    neg-long p2, p2

    :cond_1
    long-to-float p2, p2

    const/high16 p3, 0x44610000    # 900.0f

    cmpl-float v1, p2, p3

    const-wide/16 v2, 0x1

    const/high16 v4, 0x447a0000    # 1000.0f

    const-wide/16 v5, 0x3e8

    if-lez v1, :cond_2

    div-float/2addr p2, v4

    const v1, 0x7f141449

    move-wide v7, v5

    goto :goto_1

    :cond_2
    const v1, 0x7f140887

    move-wide v7, v2

    :goto_1
    cmpl-float v9, p2, p3

    if-lez v9, :cond_3

    mul-long/2addr v7, v5

    div-float/2addr p2, v4

    const v1, 0x7f141787

    :cond_3
    cmpl-float v9, p2, p3

    if-lez v9, :cond_4

    mul-long/2addr v7, v5

    div-float/2addr p2, v4

    const v1, 0x7f1410b1

    :cond_4
    cmpl-float v9, p2, p3

    if-lez v9, :cond_5

    mul-long/2addr v7, v5

    div-float/2addr p2, v4

    const v1, 0x7f142eb8

    :cond_5
    cmpl-float p3, p2, p3

    if-lez p3, :cond_6

    mul-long/2addr v7, v5

    div-float/2addr p2, v4

    const v1, 0x7f141c1d

    :cond_6
    cmp-long p3, v7, v2

    const-string v2, "%.0f"

    if-eqz p3, :cond_b

    const/high16 p3, 0x42c80000    # 100.0f

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_7

    goto :goto_2

    :cond_7
    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p3, p2, p3

    const-string v3, "%.2f"

    if-gez p3, :cond_9

    :cond_8
    move-object v2, v3

    goto :goto_2

    :cond_9
    const/high16 p3, 0x41200000    # 10.0f

    cmpg-float p3, p2, p3

    if-gez p3, :cond_a

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_8

    const-string v2, "%.1f"

    goto :goto_2

    :cond_a
    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_8

    :cond_b
    :goto_2
    if-eqz p0, :cond_c

    neg-float p2, p2

    :cond_c
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance p0, Landroid/text/format/Formatter$BytesResult;

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v5, v6

    invoke-direct/range {v3 .. v8}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0
.end method

.method public final formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p0

    iget-object p2, p0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iget-object p0, p0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    filled-new-array {p2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p2, 0x7f140f62

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-static {p2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method
