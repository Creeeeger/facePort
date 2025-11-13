.class public final Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;
.super Landroidx/compose/runtime/changelist/Operation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;-><init>()V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/compose/runtime/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 8

    const/4 p0, 0x1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

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

    const/4 v3, 0x0

    invoke-direct {v2, p2, p0, v3}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v1, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget-object v3, p1, Landroidx/compose/runtime/MovableContentStateReference;->content:Landroidx/compose/runtime/MovableContent;

    const v4, 0x78cc281

    invoke-virtual {v2, v4, v3}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;)V

    invoke-static {v2}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;)V

    iget-object v3, p1, Landroidx/compose/runtime/MovableContentStateReference;->parameter:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)V

    iget-object v3, p1, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/Anchor;

    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/SlotWriter;->moveTo(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotWriter;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->endGroup()V

    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->endInsert()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    new-instance v2, Landroidx/compose/runtime/MovableContentState;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/MovableContentState;-><init>(Landroidx/compose/runtime/SlotTable;)V

    sget-object v3, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, p0

    if-eqz v3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v4, p2

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/Anchor;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v5

    iget-object v6, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v6}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor(I[I)I

    move-result v6

    add-int/2addr v5, p0

    iget v7, v1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge v5, v7, :cond_2

    iget-object v7, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v5, v7}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor(I[I)I

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v5, v1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    array-length v5, v5

    :goto_1
    sub-int/2addr v5, v6

    if-lez v5, :cond_3

    iget-object v5, v1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    aget-object v5, v5, v6

    goto :goto_2

    :cond_3
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    :goto_2
    instance-of v5, v5, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v5, :cond_4

    new-instance v3, Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;

    invoke-direct {v3, p4, p1}, Landroidx/compose/runtime/changelist/OperationKt$releaseMovableGroupAtCurrent$movableContentRecomposeScopeOwner$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p4

    :try_start_1
    sget-object v1, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, p3, v3}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->adoptAnchoredScopes$runtime_release(Landroidx/compose/runtime/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p0

    :cond_4
    add-int/2addr v4, p0

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {v0, p1, v2}, Landroidx/compose/runtime/CompositionContext;->movableContentStateReleased$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v2, p2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw p0
.end method

.method public final objectParamName-31yXWZQ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "composition"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "parentCompositionContext"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->equals-impl0(II)Z

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
