.class final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

.field final synthetic $isCover:Z

.field final synthetic $upToLargeDensity:Landroidx/compose/ui/unit/Density;

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;Landroidx/compose/ui/unit/Density;Lcom/android/systemui/media/mediaoutput/compose/common/Feature;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->$upToLargeDensity:Landroidx/compose/ui/unit/Density;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->$feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iput-boolean p4, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->$isCover:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p3, v0

    :cond_1
    and-int/lit8 p3, p3, 0x5b

    const/16 v0, 0x12

    if-ne p3, v0, :cond_3

    move-object p3, p2

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_3
    :goto_1
    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p3, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalRootSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-wide v0, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v2

    iget-object v3, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    if-eqz v2, :cond_4

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    invoke-interface {v3, v0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v0

    goto :goto_2

    :cond_4
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/unit/Dp;->Infinity:F

    :goto_2
    iget-wide v1, p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    invoke-interface {v3, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p1

    goto :goto_3

    :cond_5
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/unit/Dp;->Infinity:F

    :goto_3
    invoke-static {v0, p1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->box-impl(J)Landroidx/compose/ui/unit/DpSize;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    iget-object p3, p3, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;->factory:Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    sget-object p1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->$upToLargeDensity:Landroidx/compose/ui/unit/Density;

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->$feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaOutputState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->$feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalTransitionInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->$feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalDismissCallback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->$feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1;

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->$isCover:Z

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;

    invoke-direct {p3, v0, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity$onCreate$3$1$1;-><init>(ZLcom/android/systemui/media/mediaoutput/activity/MediaOutputActivity;)V

    const p0, 0x29766bd7

    invoke-static {p0, p2, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p3, 0x38

    invoke-static {p1, p0, p2, p3}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
