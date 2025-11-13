.class public final Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;
.super Landroidx/compose/runtime/changelist/Operation;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/compose/runtime/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 9

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/ControlledComposition;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionContext;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/MovableContentStateReference;

    new-instance v1, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v1}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iget-object v2, p3, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    :cond_0
    iget-object v2, p3, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    if-eqz v2, :cond_1

    new-instance v2, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v2}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v2, v1, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget-object v3, p1, Landroidx/compose/runtime/MovableContentStateReference;->content:Landroidx/compose/runtime/MovableContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const v5, 0x78cc281

    :try_start_1
    invoke-virtual {v2, v5, v3, p0, v4}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;)V

    iget-object v3, p1, Landroidx/compose/runtime/MovableContentStateReference;->parameter:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)V

    iget-object v3, p1, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/Anchor;

    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/SlotWriter;->moveTo(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotWriter;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->endGroup()V

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->endInsert()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2, p4}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    new-instance v2, Landroidx/compose/runtime/MovableContentState;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/MovableContentState;-><init>(Landroidx/compose/runtime/SlotTable;)V

    move-object v3, p3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, p4

    if-eqz v3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v5, p0

    :goto_0
    if-ge v5, v3, :cond_5

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/Anchor;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v6

    iget-object v7, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v6, v7}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor(I[I)I

    move-result v7

    add-int/2addr v6, p4

    iget v8, v1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge v6, v8, :cond_2

    iget-object v8, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v6, v8}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor(I[I)I

    move-result v6

    goto :goto_1

    :cond_2
    iget-object v6, v1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length v6, v6

    :goto_1
    sub-int/2addr v6, v7

    if-lez v6, :cond_3

    iget-object v6, v1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    aget-object v6, v6, v7

    goto :goto_2

    :cond_3
    move-object v6, v4

    :goto_2
    instance-of v6, v6, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v6, :cond_4

    new-instance v3, Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;

    invoke-direct {v3, p2, p1}, Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p2

    :try_start_2
    invoke-static {p2, p3, v3}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->adoptAnchoredScopes$runtime_release(Landroidx/compose/runtime/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {v0, p1, v2}, Landroidx/compose/runtime/CompositionContext;->movableContentStateReleased$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p1
.end method

.method public final objectParamName-31yXWZQ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0$1(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "composition"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0$1(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "parentCompositionContext"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0$1(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "reference"

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
