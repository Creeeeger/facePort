.class public final Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;
.super Landroidx/compose/runtime/changelist/Operation;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$CopySlotTableToAnchorLocation;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/compose/runtime/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 9

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/MovableContentStateReference;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/MovableContentState;

    if-nez p1, :cond_1

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Could not resolve state for movable content"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget p0, p3, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-gtz p0, :cond_2

    iget p0, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr p0, p4

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result p0

    if-ne p0, p4, :cond_2

    move p0, p4

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    iget p0, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v0, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v2, p3, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    invoke-virtual {p3, p4}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget-object p1, p1, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p1

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move-object v5, p3

    :try_start_0
    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p4}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->endGroup()V

    iput p0, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iput v0, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v2, p3, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    iget-object p0, p2, Landroidx/compose/runtime/MovableContentStateReference;->composition:Landroidx/compose/runtime/ControlledComposition;

    const-string p1, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeOwner"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/runtime/RecomposeScopeOwner;

    invoke-static {p3, v1, p0}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->adoptAnchoredScopes$runtime_release(Landroidx/compose/runtime/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p0
.end method

.method public final objectParamName-31yXWZQ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0$1(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "resolvedState"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0$1(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "resolvedCompositionContext"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0$1(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "from"

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0$1(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p0, "to"

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
