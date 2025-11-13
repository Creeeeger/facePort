.class public abstract Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SliceAndroidView(Landroidx/slice/Slice;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V
    .locals 8

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x18e26e17

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_2

    const/4 p3, 0x1

    :cond_2
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$1;->INSTANCE:Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$1;

    sget-object v3, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$2;->INSTANCE:Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$2;

    new-instance v4, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$3;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$3;-><init>(Landroidx/slice/Slice;Lkotlin/jvm/functions/Function1;Z)V

    and-int/lit8 v1, p5, 0x70

    or-int/lit16 v6, v1, 0xc06

    const/4 v7, 0x4

    const/4 v2, 0x0

    move-object v1, p1

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_3

    new-instance v7, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/panel/component/anc/ui/composable/SliceAndroidViewKt$SliceAndroidView$4;-><init>(Landroidx/slice/Slice;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;ZII)V

    iput-object v7, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
