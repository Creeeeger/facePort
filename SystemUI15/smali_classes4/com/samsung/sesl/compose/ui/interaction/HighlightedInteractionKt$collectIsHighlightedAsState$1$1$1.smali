.class public final Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $dragInteractions:Ljava/util/List;

.field public final synthetic $isHighlighted:Landroidx/compose/runtime/MutableState;

.field public final synthetic $pressInteractions:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/interaction/DragInteraction$Start;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$dragInteractions:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$pressInteractions:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$isHighlighted:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    instance-of p2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$dragInteractions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of p2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$dragInteractions:Ljava/util/List;

    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of p2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$dragInteractions:Ljava/util/List;

    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$pressInteractions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$pressInteractions:Ljava/util/List;

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$pressInteractions:Ljava/util/List;

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$dragInteractions:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$pressInteractions:Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    and-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt$collectIsHighlightedAsState$1$1$1;->$isHighlighted:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
