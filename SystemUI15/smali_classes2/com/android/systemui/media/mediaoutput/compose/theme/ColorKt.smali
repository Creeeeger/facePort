.class public abstract Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final cardBackground(Landroidx/compose/runtime/Composer;)J
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x380df80b

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalBackgroundColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->value:J

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-wide v0
.end method

.method public static final cardMediaControlDefaultBackground(Landroidx/compose/runtime/Composer;)Ljava/util/List;
    .locals 4

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x2397dc2a

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    filled-new-array {v2, v0}, [Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method

.method public static final dividerColor(Landroidx/compose/runtime/Composer;)J
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x3a9bae09

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-wide v0
.end method

.method public static final mediaPrimaryColor(Landroidx/compose/runtime/Composer;)J
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x6a721216

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const-wide v0, 0xfffafaffL

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-wide v0
.end method

.method public static final primaryColor(ZZLandroidx/compose/runtime/Composer;I)J
    .locals 4

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x75aadfa4

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p1, v1

    :cond_1
    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz p0, :cond_2

    const p0, -0x3c94f700

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const p0, 0x7f0607aa

    invoke-static {p0, p2}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/Composer;)J

    move-result-wide p0

    :goto_0
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_2
    const p0, -0x3c94f69b

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const p0, 0x7f060877

    invoke-static {p0, p2}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/Composer;)J

    move-result-wide v2

    if-eqz p1, :cond_3

    const p0, 0x3f19999a    # 0.6f

    invoke-static {p0, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide p0

    goto :goto_0

    :cond_3
    move-wide p0, v2

    goto :goto_0

    :goto_1
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-wide p0
.end method
