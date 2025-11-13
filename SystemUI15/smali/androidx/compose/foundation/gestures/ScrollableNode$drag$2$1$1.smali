.class final Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;
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
.field final synthetic $$this$scroll:Landroidx/compose/foundation/gestures/NestedScrollScope;

.field final synthetic $this_with:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/foundation/gestures/ScrollingLogic;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;->$$this$scroll:Landroidx/compose/foundation/gestures/NestedScrollScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;->$this_with:Landroidx/compose/foundation/gestures/ScrollingLogic;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;->$$this$scroll:Landroidx/compose/foundation/gestures/NestedScrollScope;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1$1;->$this_with:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-wide v1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->delta:J

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(JFI)J

    move-result-wide p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    goto :goto_0

    :goto_1
    sget-object v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->UserInput:I

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    if-eqz v2, :cond_2

    iget-object v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v3}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollForward()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v3}, Landroidx/compose/foundation/gestures/ScrollableState;->getCanScrollBackward()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->latestScrollSource:I

    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->performScrollForOverscroll:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p0, p1, v1, v0}, Landroidx/compose/foundation/OverscrollEffect;->applyToScroll-Rhakbz0(JILkotlin/jvm/functions/Function1;)J

    goto :goto_2

    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-static {v0, v2, p0, p1, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
