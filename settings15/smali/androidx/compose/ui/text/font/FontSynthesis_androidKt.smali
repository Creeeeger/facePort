.class public abstract Landroidx/compose/ui/text/font/FontSynthesis_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final synthesizeTypeface-FxwP2eA(ILjava/lang/Object;Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p2, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->W400:Landroidx/compose/ui/text/font/FontWeight;

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {p3, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v3, p2, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v3, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v1

    if-gez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    invoke-static {p0, v3}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    iget p0, p2, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    invoke-static {p4, p0}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_4

    move v2, v0

    :cond_4
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    iget p0, p3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    goto :goto_1

    :cond_6
    iget-object p0, p2, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget p0, p0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    :goto_1
    if-eqz v2, :cond_7

    invoke-static {p4, v0}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p2

    goto :goto_2

    :cond_7
    iget p2, p2, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    invoke-static {p2, v0}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p2

    :goto_2
    check-cast p1, Landroid/graphics/Typeface;

    invoke-static {p1, p0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
