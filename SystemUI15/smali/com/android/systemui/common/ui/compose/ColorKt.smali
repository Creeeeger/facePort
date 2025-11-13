.class public abstract Lcom/android/systemui/common/ui/compose/ColorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final toColor(Lcom/android/systemui/common/shared/model/Color;Landroidx/compose/runtime/Composer;)J
    .locals 2

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    instance-of v0, p0, Lcom/android/systemui/common/shared/model/Color$Attribute;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/common/shared/model/Color$Attribute;

    iget p0, p0, Lcom/android/systemui/common/shared/model/Color$Attribute;->attribute:I

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/compose/theme/AndroidColorScheme;->Companion:Lcom/android/compose/theme/AndroidColorScheme$Companion;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/compose/theme/AndroidColorScheme$Companion;->getColor-WaAFU9c(ILandroid/content/Context;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/android/systemui/common/shared/model/Color$Loaded;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/android/systemui/common/shared/model/Color$Loaded;

    iget p0, p0, Lcom/android/systemui/common/shared/model/Color$Loaded;->color:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
