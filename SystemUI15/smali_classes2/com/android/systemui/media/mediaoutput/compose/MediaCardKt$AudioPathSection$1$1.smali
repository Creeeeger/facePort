.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $audioDevices$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $groupDeviceExpandedState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $groupDeviceIds$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $isInAppCastingMode:Z


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;ZLandroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/MutableState;",
            "Z",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;->$audioDevices$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;->$groupDeviceExpandedState:Landroidx/compose/runtime/MutableState;

    iput-boolean p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;->$isInAppCastingMode:Z

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;->$groupDeviceIds$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;->$audioDevices$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$1;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;->$groupDeviceExpandedState:Landroidx/compose/runtime/MutableState;

    iget-boolean v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;->$isInAppCastingMode:Z

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;->$groupDeviceIds$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;->$audioDevices$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$1;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$2;

    invoke-direct {v7, v2}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v8, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1$invoke$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x410876af

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListInterval;

    invoke-direct {v2, v0, v7, v1}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    invoke-virtual {p1, p0, v2}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
