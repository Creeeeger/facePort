.class public abstract Landroidx/compose/runtime/ComposerKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final InvalidationLocationAscending:Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda1;

.field public static final compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

.field public static final invocation:Landroidx/compose/runtime/OpaqueKey;

.field public static final provider:Landroidx/compose/runtime/OpaqueKey;

.field public static final providerMaps:Landroidx/compose/runtime/OpaqueKey;

.field public static final reference:Landroidx/compose/runtime/OpaqueKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "provider"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "compositionLocalMap"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "providers"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "reference"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending:Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda1;

    return-void
.end method

.method public static final access$removeRange(ILjava/util/List;I)V
    .locals 1

    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerKt;->findLocation(ILjava/util/List;)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Invalidation;

    iget v0, v0, Landroidx/compose/runtime/Invalidation;->location:I

    if-ge v0, p2, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final collectNodesFrom$lambda$10$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-static {p2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v2

    add-int/2addr v2, p2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {p0, p1, v1}, Landroidx/compose/runtime/ComposerKt;->collectNodesFrom$lambda$10$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V

    mul-int/lit8 p2, v1, 0x5

    add-int/lit8 p2, p2, 0x3

    aget p2, v0, p2

    add-int/2addr v1, p2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final composeImmediateRuntimeError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final composeRuntimeError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final deactivateCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    :goto_0
    if-ge v2, v3, :cond_8

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v5

    iget-object v7, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v8

    invoke-virtual {v0, v8, v7}, Landroidx/compose/runtime/SlotWriter;->slotIndex(I[I)I

    move-result v7

    sub-int/2addr v5, v7

    check-cast v4, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-virtual {v1, v4, v5, v6, v6}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/SlotWriter;->slotIndex(I[I)I

    move-result v4

    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v8

    invoke-virtual {v0, v8, v5}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v5

    move v8, v4

    :goto_1
    if-ge v8, v5, :cond_7

    sub-int v9, v8, v4

    iget-object v10, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v11

    aget-object v10, v10, v11

    instance-of v11, v10, Landroidx/compose/runtime/RememberObserverHolder;

    const-string v13, "Slot table is out of sync"

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v11, :cond_4

    move-object v11, v10

    check-cast v11, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v15, v11, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    instance-of v6, v15, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-nez v6, :cond_3

    invoke-virtual {v0, v2, v9}, Landroidx/compose/runtime/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v6

    iget-object v12, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    move/from16 v16, v3

    aget-object v3, v12, v6

    aput-object v14, v12, v6

    if-ne v10, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    sub-int/2addr v3, v9

    iget-object v6, v11, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v9

    iget-object v10, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v11

    invoke-virtual {v0, v11, v10}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    :cond_1
    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_2
    invoke-virtual {v1, v15, v3, v6, v9}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_2
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    move/from16 v16, v3

    goto :goto_3

    :cond_4
    move/from16 v16, v3

    instance-of v3, v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2, v9}, Landroidx/compose/runtime/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v3

    iget-object v6, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v9, v6, v3

    aput-object v14, v6, v3

    if-ne v10, v9, :cond_5

    check-cast v10, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v10}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    goto :goto_3

    :cond_5
    invoke-static {v13}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v16

    const/4 v6, -0x1

    goto/16 :goto_1

    :cond_7
    move v2, v7

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static final findLocation(ILjava/util/List;)I
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Invalidation;

    iget v3, v3, Landroidx/compose/runtime/Invalidation;->location:I

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method public static final removeCurrentGroup(Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 9

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v3

    aget-object v2, v2, v3

    instance-of v3, v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    sub-int/2addr v3, v0

    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    iget-object v6, p1, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    if-nez v6, :cond_0

    sget v6, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance v6, Landroidx/collection/MutableScatterSet;

    invoke-direct {v6}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object v6, p1, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->releasing:Landroidx/collection/MutableScatterSet;

    :cond_0
    invoke-virtual {v6, v5}, Landroidx/collection/MutableScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v7

    iget-object v6, v6, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-virtual {p1, v5, v3, v4, v4}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    :cond_1
    instance-of v3, v2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v3

    sub-int/2addr v3, v0

    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v6, v5, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result v6

    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v8

    invoke-virtual {p0, v8, v7}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    iget-object v5, v5, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    :cond_3
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v3, :cond_4

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    return-void
.end method

.method public static final runtimeCheck(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Check failed"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
