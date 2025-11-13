.class final Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;
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
.field final synthetic $changeScreen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $mediaSessions$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $tvDevices$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;->$mediaSessions$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;->$tvDevices$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;->$mediaSessions$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$SelectorScreenKt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$SelectorScreenKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$SelectorScreenKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$3$1;

    invoke-direct {v5, v4, v1}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$3$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;Lkotlin/jvm/functions/Function1;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, -0x73877ec7

    invoke-direct {v4, v6, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v4}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;->$mediaSessions$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;->$tvDevices$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$SelectorScreenKt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$SelectorScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$SelectorScreenKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;->$tvDevices$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    move-object v3, v0

    :cond_3
    if-eqz v3, :cond_4

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$SelectorScreenKt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$SelectorScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$SelectorScreenKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    check-cast v3, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1;

    invoke-direct {v3, v1, p0}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1$1$1$1$6$1;-><init>(Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x6d01018c

    invoke-direct {v1, v4, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    goto :goto_2

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
