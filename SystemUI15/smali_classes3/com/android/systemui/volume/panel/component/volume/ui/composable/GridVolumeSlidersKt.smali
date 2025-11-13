.class public abstract Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final GridVolumeSliders(Ljava/util/List;Lcom/android/compose/PlatformSliderColors;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 8

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x5ce8df22

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    int-to-float v2, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v0, 0x18

    int-to-float v3, v0

    new-instance v0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1;-><init>(Ljava/util/List;Lcom/android/compose/PlatformSliderColors;)V

    const v1, -0x31434e2b

    invoke-static {v1, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    shr-int/lit8 v0, p4, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v6, v0, 0x6d86

    const/4 v7, 0x0

    const/4 v0, 0x2

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/android/compose/grid/GridsKt;->VerticalGrid-vz2T9sI(ILandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v6, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;-><init>(Ljava/util/List;Lcom/android/compose/PlatformSliderColors;Landroidx/compose/ui/Modifier;II)V

    iput-object v6, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
