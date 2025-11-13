.class public final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field final synthetic $items:Ljava/util/List;

.field final synthetic $mediaInfo$delegate$inlined:Landroidx/compose/runtime/State;

.field final synthetic $viewModel$inlined:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$4;->$viewModel$inlined:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$4;->$mediaInfo$delegate$inlined:Landroidx/compose/runtime/State;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p4

    goto :goto_1

    :cond_1
    move p1, p4

    :goto_1
    and-int/lit8 p4, p4, 0x30

    const/16 v0, 0x20

    if-nez p4, :cond_3

    move-object p4, p3

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p4

    if-eqz p4, :cond_2

    move p4, v0

    goto :goto_2

    :cond_2
    const/16 p4, 0x10

    :goto_2
    or-int/2addr p1, p4

    :cond_3
    and-int/lit16 p1, p1, 0x93

    const/16 p4, 0x92

    if-ne p1, p4, :cond_5

    move-object p1, p3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_5
    :goto_3
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p2, 0x51e775cb

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-wide v1, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    const/4 p4, 0x0

    if-nez p2, :cond_6

    const p0, 0x51e7760c

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    int-to-float p1, v0

    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v9, 0x6

    const/16 v10, 0x1e

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v8, p3

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3, p4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_6
    const p2, 0x51e7766c

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$1;

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$4;->$viewModel$inlined:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$invoke$$inlined$items$default$4;->$mediaInfo$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-direct {v1, p2, p1, p0}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lcom/android/systemui/media/mediaoutput/entity/MediaAction;Landroidx/compose/runtime/State;)V

    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 p2, 0x28

    int-to-float p2, p2

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p0, p2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$2;

    invoke-direct {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$2;-><init>(Lcom/android/systemui/media/mediaoutput/entity/MediaAction;)V

    const p2, 0x3b2a92d9

    invoke-static {p2, p3, p0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const v8, 0x30030

    const/16 v9, 0x18

    iget-boolean v3, p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->enabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3, p4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {p3, p4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
