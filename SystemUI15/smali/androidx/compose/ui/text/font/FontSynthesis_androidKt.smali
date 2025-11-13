.class public abstract Landroidx/compose/ui/text/font/FontSynthesis_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final synthesizeTypeface-FxwP2eA(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->All:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget v1, Landroidx/compose/ui/text/font/FontSynthesis;->Weight:I

    invoke-static {p0, v1}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {p3, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    iget v4, v4, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    iget v1, v1, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Landroidx/compose/ui/text/font/FontSynthesis;->Style:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/font/FontSynthesis;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result p0

    invoke-static {p4, p0}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_4

    move v2, v3

    :cond_4
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    iget p0, p3, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    iget p0, p0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    :goto_1
    if-eqz v2, :cond_7

    sget-object p2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Landroidx/compose/ui/text/font/FontStyle;->Italic:I

    invoke-static {p4, p2}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p2

    goto :goto_2

    :cond_7
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result p2

    sget-object p3, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Landroidx/compose/ui/text/font/FontStyle;->Italic:I

    invoke-static {p2, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p2

    :goto_2
    sget-object p3, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
