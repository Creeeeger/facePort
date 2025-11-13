.class public final Landroidx/compose/runtime/ComposerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/runtime/Composer;


# instance fields
.field public final abandonSet:Ljava/util/Set;

.field public final applier:Landroidx/compose/runtime/Applier;

.field public final changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

.field public final changes:Landroidx/compose/runtime/changelist/ChangeList;

.field public childrenComposing:I

.field public final composition:Landroidx/compose/runtime/ControlledComposition;

.field public compositionToken:I

.field public compoundKeyHash:I

.field public deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field public final derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

.field public final entersStack:Landroidx/compose/runtime/IntStack;

.field public forceRecomposeScopes:Z

.field public groupNodeCount:I

.field public insertAnchor:Landroidx/compose/runtime/Anchor;

.field public insertFixups:Landroidx/compose/runtime/changelist/FixupList;

.field public insertTable:Landroidx/compose/runtime/SlotTable;

.field public inserting:Z

.field public final invalidateStack:Landroidx/compose/runtime/Stack;

.field public final invalidations:Ljava/util/List;

.field public isComposing:Z

.field public final lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

.field public nodeCountOverrides:[I

.field public nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

.field public nodeExpected:Z

.field public nodeIndex:I

.field public final parentContext:Landroidx/compose/runtime/CompositionContext;

.field public parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field public final parentStateStack:Landroidx/compose/runtime/IntStack;

.field public pending:Landroidx/compose/runtime/Pending;

.field public final pendingStack:Landroidx/compose/runtime/Stack;

.field public providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field public providerUpdates:Landroidx/compose/runtime/collection/IntMap;

.field public providersInvalid:Z

.field public final providersInvalidStack:Landroidx/compose/runtime/IntStack;

.field public rGroupIndex:I

.field public reader:Landroidx/compose/runtime/SlotReader;

.field public reusing:Z

.field public reusingGroup:I

.field public final slotTable:Landroidx/compose/runtime/SlotTable;

.field public sourceMarkersEnabled:Z

.field public writer:Landroidx/compose/runtime/SlotWriter;

.field public writerHasAProvider:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/UiApplier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Landroidx/collection/MutableScatterSet$MutableSetWrapper;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    iput-object p3, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iput-object p4, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    iput-object p6, p0, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    iput-object p7, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    new-instance p1, Landroidx/compose/runtime/Stack;

    invoke-direct {p1}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    sget-object p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->Empty:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result p1

    const/4 p4, 0x1

    const/4 p6, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p6

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p4

    :goto_1
    iput-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    new-instance p1, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/ComposerImpl;)V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    new-instance p1, Landroidx/compose/runtime/Stack;

    invoke-direct {p1}, Landroidx/compose/runtime/Stack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    new-instance p1, Landroidx/compose/runtime/SlotTable;

    invoke-direct {p1}, Landroidx/compose/runtime/SlotTable;-><init>()V

    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {p2}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object p2, p1, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    :cond_3
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    new-instance p1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-direct {p1, p0, p5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;)V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p6}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    new-instance p1, Landroidx/compose/runtime/changelist/FixupList;

    invoke-direct {p1}, Landroidx/compose/runtime/changelist/FixupList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    throw p0
.end method

.method public static final reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x1

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v5, v4, Landroidx/compose/runtime/SlotReader;->groups:[I

    mul-int/lit8 v6, v1, 0x5

    add-int/lit8 v7, v6, 0x1

    aget v7, v5, v7

    const/high16 v8, 0x8000000

    and-int/2addr v7, v8

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    if-eqz v7, :cond_15

    aget v7, v5, v6

    invoke-virtual {v4, v1, v5}, Landroidx/compose/runtime/SlotReader;->objectKey(I[I)Ljava/lang/Object;

    move-result-object v10

    const v12, 0x78cc281

    iget-object v13, v0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    if-ne v7, v12, :cond_e

    instance-of v12, v10, Landroidx/compose/runtime/MovableContent;

    if-eqz v12, :cond_e

    move-object v15, v10

    check-cast v15, Landroidx/compose/runtime/MovableContent;

    invoke-virtual {v4, v1, v8}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v19

    add-int/lit8 v6, v6, 0x3

    aget v4, v5, v6

    add-int/2addr v4, v1

    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->findLocation(ILjava/util/List;)I

    move-result v10

    if-gez v10, :cond_1

    add-int/2addr v10, v3

    neg-int v10, v10

    :cond_1
    :goto_1
    move-object v12, v6

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_2

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/Invalidation;

    iget v14, v12, Landroidx/compose/runtime/Invalidation;->location:I

    if-ge v14, v4, :cond_2

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v3

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v10, v8

    :goto_2
    if-ge v10, v6, :cond_3

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/Invalidation;

    iget-object v14, v12, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v12, v12, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v14, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v3

    goto :goto_2

    :cond_3
    new-instance v6, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v21

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    move-object v14, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    move-object/from16 v20, v4

    invoke-direct/range {v14 .. v21}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/CompositionContext;->deletedMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    iget-object v4, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;

    iget-object v4, v4, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    invoke-static {v4, v8, v0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    invoke-static {v4, v3, v13}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v4, v0, v6}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v0, v4, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v6, v7, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v4, v6}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v10

    iget v11, v7, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v0, v10, :cond_7

    iget v0, v4, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v4, v11}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v10

    if-ne v0, v10, :cond_7

    if-eqz p2, :cond_6

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object v0, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v4, v4, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v4}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v0, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v3

    :goto_3
    if-lez v3, :cond_5

    invoke-virtual {v9, v2, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    :cond_5
    move v3, v8

    goto/16 :goto_d

    :cond_6
    invoke-static {v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v3

    goto/16 :goto_d

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v8

    move v2, v1

    :goto_4
    const-string v5, ", "

    if-ge v1, v6, :cond_a

    shl-int v9, v3, v1

    iget v10, v4, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_9

    if-lez v2, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    :cond_9
    add-int/2addr v1, v3

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v9, v8

    :goto_5
    if-ge v8, v11, :cond_d

    shl-int v10, v3, v8

    iget v12, v4, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_c

    if-lez v2, :cond_b

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/changelist/Operation$ReleaseMovableGroupAtCurrent;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v9, v3

    :cond_c
    add-int/2addr v8, v3

    goto :goto_5

    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error while pushing "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Not all arguments were provided. Missing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " int arguments ("

    const-string v5, ") and "

    invoke-static {v1, v2, v4, v0, v5}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " object arguments ("

    const-string v2, ")."

    invoke-static {v1, v9, v0, v3, v2}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    const/4 v0, 0x0

    const/16 v2, 0xce

    if-ne v7, v2, :cond_13

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->reference:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v4, v1, v8}, Landroidx/compose/runtime/SlotReader;->groupGet(II)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-eqz v3, :cond_f

    move-object v11, v2

    check-cast v11, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    goto :goto_6

    :cond_f
    move-object v11, v0

    :goto_6
    if-eqz v11, :cond_12

    iget-object v0, v11, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->composers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    iget-object v3, v2, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v4, v2, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget v6, v4, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-lez v6, :cond_11

    iget-object v6, v4, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v8, v6}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark(I[I)Z

    move-result v6

    if-eqz v6, :cond_11

    new-instance v6, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v6}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iput-object v6, v2, Landroidx/compose/runtime/ComposerImpl;->deferredChanges:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v4

    :try_start_0
    iput-object v4, v2, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v7, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v6, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-boolean v6, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-eqz v6, :cond_10

    iget-object v6, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;

    iget-object v6, v6, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    iget-boolean v6, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-eqz v6, :cond_10

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v6, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;

    iget-object v6, v6, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    iput-boolean v8, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    :try_start_2
    iput-object v7, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->close()V

    goto :goto_8

    :catchall_0
    move-exception v0

    :try_start_3
    iput-object v7, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0

    :cond_11
    :goto_8
    iget-object v2, v2, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime_release(Landroidx/compose/runtime/ControlledComposition;)V

    goto :goto_7

    :cond_12
    invoke-static {v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v3

    goto/16 :goto_d

    :cond_13
    invoke-static {v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_d

    :cond_14
    invoke-static {v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v3

    goto/16 :goto_d

    :cond_15
    invoke-static {v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark(I[I)Z

    move-result v7

    if-eqz v7, :cond_1d

    add-int/lit8 v6, v6, 0x3

    aget v6, v5, v6

    add-int/2addr v6, v1

    add-int/lit8 v7, v1, 0x1

    move v10, v8

    :goto_9
    if-ge v7, v6, :cond_1b

    invoke-static {v7, v5}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v13, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Landroidx/compose/runtime/Stack;

    iget-object v13, v13, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-nez v11, :cond_18

    if-eqz p2, :cond_17

    goto :goto_a

    :cond_17
    move v12, v8

    goto :goto_b

    :cond_18
    :goto_a
    move v12, v3

    :goto_b
    if-eqz v11, :cond_19

    move v13, v8

    goto :goto_c

    :cond_19
    add-int v13, v2, v10

    :goto_c
    invoke-static {v0, v7, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    move-result v12

    add-int/2addr v10, v12

    if-eqz v11, :cond_1a

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_1a
    mul-int/lit8 v11, v7, 0x5

    add-int/lit8 v11, v11, 0x3

    aget v11, v5, v11

    add-int/2addr v7, v11

    goto :goto_9

    :cond_1b
    invoke-static {v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_d

    :cond_1c
    move v3, v10

    goto :goto_d

    :cond_1d
    invoke-static {v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_d

    :cond_1e
    invoke-static {v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v3

    :goto_d
    return v3
.end method


# virtual methods
.method public final abortRoot()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    iget-object v0, v0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->entersStack:Landroidx/compose/runtime/IntStack;

    iput v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    iput v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    iget-object v2, v0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    iget-object v0, v0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-boolean v1, v0, Landroidx/compose/runtime/SlotReader;->closed:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean v0, v0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->forceFreshInsertTable()V

    :cond_1
    return-void
.end method

.method public final apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v5, 0x1

    const-string v6, ")."

    const-string v7, " object arguments ("

    const-string v8, ") and "

    const-string v9, " int arguments ("

    const-string v10, ". Not all arguments were provided. Missing "

    const-string v11, "Error while pushing "

    const-string v12, "StringBuilder().apply(builderAction).toString()"

    const-string v13, ", "

    const/4 v14, 0x2

    const-string v15, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateNode;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v1, v0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v2, v3, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v0, v2}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v14

    iget v15, v3, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v1, v14, :cond_0

    iget v1, v0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v0, v15}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v14

    if-ne v1, v14, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v14, v4

    :goto_0
    if-ge v14, v2, :cond_3

    shl-int v17, v5, v14

    iget v5, v0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int v5, v17, v5

    if-eqz v5, :cond_2

    if-lez v4, :cond_1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v5, v15, :cond_6

    const/16 v16, 0x1

    shl-int v17, v16, v5

    move/from16 p0, v15

    iget v15, v0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int v15, v17, v15

    if-eqz v15, :cond_5

    if-lez v4, :cond_4

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, p0

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4, v9, v1, v8}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v14, v7, v0, v6}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_7
    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateNode;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v1, v0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v2, v3, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v0, v2}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    iget v14, v3, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v1, v5, :cond_8

    iget v1, v0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v0, v14}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v1, v5, :cond_8

    :goto_2
    return-void

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v4

    move v15, v5

    :goto_3
    if-ge v5, v2, :cond_b

    const/16 v16, 0x1

    shl-int v17, v16, v5

    iget v4, v0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int v4, v17, v4

    if-eqz v4, :cond_a

    if-lez v15, :cond_9

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_a
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v4, v14, :cond_e

    const/16 v16, 0x1

    shl-int v17, v16, v4

    move/from16 v18, v14

    iget v14, v0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int v14, v17, v14

    if-eqz v14, :cond_d

    if-lez v15, :cond_c

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_d
    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v18

    goto :goto_4

    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v15, v9, v1, v8}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5, v7, v0, v6}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final changed(F)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changed(I)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changed(J)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changed(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final changed(Z)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changedInstance(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final cleanUpCompose()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iput-boolean v1, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    iget-object v3, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iput v1, v3, Landroidx/compose/runtime/IntStack;->tos:I

    iput v1, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    iget-object v1, v1, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    return-void
.end method

.method public final compoundKeyOf(IIII)I
    .locals 6

    if-ne p1, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v1, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey(I[I)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x78cc281

    iget-object v4, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1, v4}, Landroidx/compose/runtime/SlotReader;->objectKey(I[I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/lang/Enum;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroidx/compose/runtime/MovableContent;

    if-eqz v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    mul-int/lit8 v1, p1, 0x5

    aget v1, v4, v1

    const/16 v5, 0xcf

    if-ne v1, v5, :cond_6

    invoke-virtual {v0, p1, v4}, Landroidx/compose/runtime/SlotReader;->aux(I[I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    :goto_0
    move v0, v1

    :goto_1
    if-ne v0, v3, :cond_7

    move p4, v0

    goto :goto_3

    :cond_7
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v1, v1, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v1

    if-ne v1, p3, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->rGroupIndexOf(I)I

    move-result v3

    invoke-virtual {p0, v1, v3, p3, p4}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(IIII)I

    move-result p4

    :goto_2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object p0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, p0}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey(I[I)Z

    move-result p0

    if-eqz p0, :cond_9

    move p2, v2

    :cond_9
    const/4 p0, 0x3

    invoke-static {p4, p0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1, p0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, p2

    move p4, p0

    :goto_3
    return p4
.end method

.method public final consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final createNode(Lkotlin/jvm/functions/Function0;)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iget-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_a

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget-object v4, v3, Landroidx/compose/runtime/IntStack;->slots:[I

    iget v3, v3, Landroidx/compose/runtime/IntStack;->tos:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget v3, v4, v3

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v6, v4, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v4

    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    sget-object v6, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE$1:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    iget-object v7, v0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    move-object/from16 v8, p1

    invoke-static {v7, v1, v8}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    invoke-static {v7, v1, v3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    invoke-static {v7, v5, v4}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v8, v7, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    invoke-static {v7, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v8, v9, :cond_0

    iget v8, v7, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v7, v10}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v9

    if-ne v8, v9, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    const-string v9, ")."

    const-string v11, " object arguments ("

    const-string v12, ") and "

    const-string v13, " int arguments ("

    const-string v14, ". Not all arguments were provided. Missing "

    const-string v15, "Error while pushing "

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    const-string v10, ", "

    if-nez v8, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v7, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v8, v1

    move-object/from16 p0, v9

    :goto_2
    const/4 v9, 0x2

    if-ge v1, v9, :cond_4

    shl-int v16, v5, v1

    iget v9, v7, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int v9, v16, v9

    if-eqz v9, :cond_3

    if-lez v3, :cond_2

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3, v13, v0, v12}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, p0

    invoke-static {v2, v8, v11, v1, v6}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_5
    move-object v6, v9

    sget-object v7, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE$2:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v3, v0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    invoke-static {v0, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v4

    if-ne v3, v4, :cond_6

    iget v3, v0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v0, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v4

    if-ne v3, v4, :cond_6

    return-void

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    if-lez v4, :cond_8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v5

    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4, v13, v3, v12}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1, v11, v0, v6}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_a
    const/4 v0, 0x0

    const-string v1, "createNode() can only be called when inserting"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    const-string v1, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v0
.end method

.method public final currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p0

    return-object p0
.end method

.method public final currentCompositionLocalScope(I)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 7

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    const/16 v2, 0xca

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v0, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    :goto_0
    if-lez v0, :cond_3

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v4, v3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    aget v3, v4, v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    iget-object v5, v3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v5}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey(I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v3, v3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v6, v4, 0x4

    aget v6, v3, v6

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x1e

    invoke-static {v3}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result v3

    add-int/2addr v3, v6

    aget-object v3, v5, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v2, p1, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v3, p1, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p1, v0, v3}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result p1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    shr-int/lit8 v0, v0, 0x1d

    invoke-static {v0}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result v0

    add-int/2addr v0, p1

    aget-object p1, v2, v0

    goto :goto_2

    :cond_1
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    :goto_2
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1

    :cond_2
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v4, v3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v3, v0, v4}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-lez v0, :cond_7

    :goto_3
    if-lez p1, :cond_7

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    mul-int/lit8 v3, p1, 0x5

    iget-object v4, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    aget v3, v4, v3

    if-ne v3, v2, :cond_6

    invoke-virtual {v0, p1, v4}, Landroidx/compose/runtime/SlotReader;->objectKey(I[I)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/compose/runtime/collection/IntMap;->sparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-virtual {v0, p1, v2}, Landroidx/compose/runtime/SlotReader;->aux(I[I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_5
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0

    :cond_6
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v0, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result p1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object p1
.end method

.method public final deactivateToEndGroup(Z)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, p1, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget p1, p1, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v1, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$DeactivateCurrentGroup;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(ILjava/util/List;I)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    :cond_2
    return-void

    :cond_3
    const-string p0, "No nodes can be emitted before calling dactivateToEndGroup"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final doCompose(Landroidx/compose/runtime/collection/ScopeMap;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    const-string v2, "Compose:recompose"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v2

    iput v2, v1, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    iput-object v4, v1, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    move-object/from16 v2, p1

    iget-object v2, v2, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    iget-object v5, v2, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v6, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v7, v2

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    if-ltz v7, :cond_5

    const/4 v10, 0x0

    :goto_0
    aget-wide v11, v2, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    sub-int v13, v10, v7

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_3

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_2

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v4, v5, v16

    aget-object v8, v6, v16

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    move-object v3, v4

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v3, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    if-eqz v3, :cond_1

    iget v3, v3, Landroidx/compose/runtime/Anchor;->location:I

    iget-object v9, v1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v4, Landroidx/compose/runtime/RecomposeScopeImpl;

    sget-object v14, Landroidx/compose/runtime/ScopeInvalidated;->INSTANCE:Landroidx/compose/runtime/ScopeInvalidated;

    if-ne v8, v14, :cond_0

    const/4 v8, 0x0

    :cond_0
    new-instance v14, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v14, v4, v3, v8}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_2
    const/16 v3, 0x8

    goto :goto_3

    :cond_2
    move v3, v14

    :goto_3
    shr-long/2addr v11, v3

    add-int/lit8 v15, v15, 0x1

    move v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    move v3, v14

    if-ne v13, v3, :cond_5

    :cond_4
    if-eq v10, v7, :cond_5

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    goto :goto_0

    :cond_5
    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->InvalidationLocationAscending:Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda1;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    iput v2, v1, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->startRoot()V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_7

    :cond_6
    :goto_4
    iget-object v3, v1, Landroidx/compose/runtime/ComposerImpl;->derivedStateObserver:Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/16 v3, 0xc8

    if-eqz v0, :cond_7

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    invoke-static {v1, v0}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_7
    iget-boolean v0, v1, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v1, v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    const/4 v0, 0x2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->skipCurrentGroup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_5
    :try_start_3
    iget v0, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->endRoot()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object v0, v1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean v0, v0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->forceFreshInsertTable()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_6
    :try_start_5
    iget v2, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    :try_start_6
    iput-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->abortRoot()V

    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean v2, v2, Landroidx/compose/runtime/SlotWriter;->closed:Z

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->forceFreshInsertTable()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_9
    const-string v0, "Reentrant composition is not supported"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final doRecordDownsFor(II)V
    .locals 1

    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v0, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object p2, p2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object p0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Landroidx/compose/runtime/Stack;

    iget-object p0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final end(Z)V
    .locals 40

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    iget-object v2, v1, Landroidx/compose/runtime/IntStack;->slots:[I

    iget v3, v1, Landroidx/compose/runtime/IntStack;->tos:I

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aget v2, v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-boolean v5, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v7, 0x3

    const/16 v9, 0xcf

    if-eqz v5, :cond_5

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v10, v5, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object v11, v5, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    aget v5, v11, v5

    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v12

    iget-object v13, v11, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v12, v13}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey(I[I)Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, v11, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v11, v11, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v12, v12, 0x5

    add-int/lit8 v14, v12, 0x4

    aget v14, v11, v14

    add-int/2addr v12, v3

    aget v11, v11, v12

    shr-int/lit8 v11, v11, 0x1e

    invoke-static {v11}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result v11

    add-int/2addr v11, v14

    aget-object v11, v13, v11

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    iget-object v12, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v10

    iget-object v13, v12, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v10, v13}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux(I[I)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, v12, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v14, v12, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v12, v10, v14}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v12

    mul-int/lit8 v10, v10, 0x5

    add-int/2addr v10, v3

    aget v10, v14, v10

    shr-int/lit8 v10, v10, 0x1d

    invoke-static {v10}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result v10

    add-int/2addr v10, v12

    aget-object v10, v13, v10

    goto :goto_1

    :cond_1
    move-object v10, v6

    :goto_1
    if-nez v11, :cond_3

    if-eqz v10, :cond_2

    if-ne v5, v9, :cond_2

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v2, v6

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Integer;->hashCode(I)I

    move-result v5

    xor-int/2addr v2, v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto/16 :goto_6

    :cond_2
    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v2, v6

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Integer;->hashCode(I)I

    move-result v5

    xor-int/2addr v2, v5

    :goto_2
    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto/16 :goto_6

    :cond_3
    instance-of v2, v11, Ljava/lang/Enum;

    if-eqz v2, :cond_4

    check-cast v11, Ljava/lang/Enum;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_3
    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v5, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    xor-int/2addr v2, v5

    goto :goto_2

    :cond_4
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_5
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v10, v5, Landroidx/compose/runtime/SlotReader;->parent:I

    mul-int/lit8 v11, v10, 0x5

    iget-object v12, v5, Landroidx/compose/runtime/SlotReader;->groups:[I

    aget v11, v12, v11

    invoke-virtual {v5, v10, v12}, Landroidx/compose/runtime/SlotReader;->objectKey(I[I)Ljava/lang/Object;

    move-result-object v5

    iget-object v12, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v13, v12, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-virtual {v12, v10, v13}, Landroidx/compose/runtime/SlotReader;->aux(I[I)Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_7

    if-eqz v10, :cond_6

    if-ne v11, v9, :cond_6

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v2, v6

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Integer;->hashCode(I)I

    move-result v5

    xor-int/2addr v2, v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_6

    :cond_6
    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v2, v5

    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    invoke-static {v11}, Ljava/lang/Integer;->hashCode(I)I

    move-result v5

    xor-int/2addr v2, v5

    :goto_4
    invoke-static {v2, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_6

    :cond_7
    instance-of v2, v5, Ljava/lang/Enum;

    if-eqz v2, :cond_8

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_5
    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v5, v7}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    xor-int/2addr v2, v5

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :goto_6
    iget v2, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    if-eqz v5, :cond_25

    iget-object v10, v5, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_25

    iget-object v10, v5, Landroidx/compose/runtime/Pending;->keyInfos:Ljava/util/List;

    iget-object v11, v5, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    new-instance v12, Ljava/util/HashSet;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_9

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_9
    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ge v3, v15, :cond_23

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v4, v19

    check-cast v4, Landroidx/compose/runtime/KeyInfo;

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    iget-object v7, v5, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    move-object/from16 v21, v12

    iget v12, v5, Landroidx/compose/runtime/Pending;->startIndex:I

    if-nez v19, :cond_b

    move/from16 v19, v15

    iget v15, v4, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v7, v15}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/GroupInfo;

    if-eqz v7, :cond_a

    iget v7, v7, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_9

    :cond_a
    const/4 v7, -0x1

    :goto_9
    add-int/2addr v7, v12

    iget v12, v4, Landroidx/compose/runtime/KeyInfo;->nodes:I

    invoke-virtual {v9, v7, v12}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    iget v4, v4, Landroidx/compose/runtime/KeyInfo;->location:I

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    iget v7, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v12, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v12, v12, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v12, v12, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    sub-int v12, v4, v12

    add-int/2addr v12, v7

    iput v12, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v7}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    iget-object v7, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v12, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v12, v12, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v4, v12}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v12

    add-int/2addr v12, v4

    invoke-static {v4, v7, v12}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(ILjava/util/List;I)V

    :goto_a
    add-int/lit8 v3, v3, 0x1

    :goto_b
    move/from16 v15, v19

    move-object/from16 v12, v21

    :goto_c
    const/4 v4, 0x2

    goto :goto_8

    :cond_b
    move/from16 v19, v15

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    goto :goto_a

    :cond_c
    if-ge v8, v14, :cond_22

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/runtime/KeyInfo;

    if-eq v15, v4, :cond_20

    iget v4, v15, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v7, v4}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/GroupInfo;

    if-eqz v4, :cond_d

    iget v4, v4, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_d

    :cond_d
    const/4 v4, -0x1

    :goto_d
    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v4, v6, :cond_1e

    move-object/from16 v22, v5

    iget v5, v15, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v7, v5}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/GroupInfo;

    if-eqz v5, :cond_e

    iget v5, v5, Landroidx/compose/runtime/GroupInfo;->nodeCount:I

    :goto_e
    move-object/from16 v23, v11

    goto :goto_f

    :cond_e
    iget v5, v15, Landroidx/compose/runtime/KeyInfo;->nodes:I

    goto :goto_e

    :goto_f
    add-int v11, v4, v12

    add-int/2addr v12, v6

    if-lez v5, :cond_11

    move-object/from16 v24, v13

    iget v13, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    if-lez v13, :cond_f

    move/from16 v25, v14

    iget v14, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    move-object/from16 v26, v1

    sub-int v1, v11, v13

    if-ne v14, v1, :cond_10

    iget v1, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    sub-int v14, v12, v13

    if-ne v1, v14, :cond_10

    add-int/2addr v13, v5

    iput v13, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    goto :goto_10

    :cond_f
    move-object/from16 v26, v1

    move/from16 v25, v14

    :cond_10
    invoke-virtual {v9}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iput v11, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    iput v12, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    iput v5, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    goto :goto_10

    :cond_11
    move-object/from16 v26, v1

    move-object/from16 v24, v13

    move/from16 v25, v14

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_10
    const/4 v1, 0x7

    const-wide v27, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-le v4, v6, :cond_18

    iget-object v12, v7, Landroidx/collection/MutableIntObjectMap;->values:[Ljava/lang/Object;

    iget-object v13, v7, Landroidx/collection/MutableIntObjectMap;->metadata:[J

    array-length v14, v13

    const/16 v20, 0x2

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_17

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    const/4 v11, 0x0

    :goto_11
    aget-wide v9, v13, v11

    move/from16 v35, v2

    move/from16 v36, v3

    not-long v2, v9

    shl-long/2addr v2, v1

    and-long/2addr v2, v9

    and-long v2, v2, v27

    cmp-long v2, v2, v27

    if-eqz v2, :cond_16

    sub-int v2, v11, v14

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_15

    const-wide/16 v31, 0xff

    and-long v37, v9, v31

    const-wide/16 v29, 0x80

    cmp-long v37, v37, v29

    if-gez v37, :cond_14

    shl-int/lit8 v37, v11, 0x3

    add-int v37, v37, v3

    aget-object v37, v12, v37

    move-object/from16 v1, v37

    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    move-object/from16 v37, v12

    iget v12, v1, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    move-object/from16 v39, v13

    if-gt v4, v12, :cond_12

    add-int v13, v4, v5

    if-ge v12, v13, :cond_12

    sub-int/2addr v12, v4

    add-int/2addr v12, v6

    iput v12, v1, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_13

    :cond_12
    if-gt v6, v12, :cond_13

    if-ge v12, v4, :cond_13

    add-int/2addr v12, v5

    iput v12, v1, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    :cond_13
    :goto_13
    const/16 v1, 0x8

    goto :goto_14

    :cond_14
    move-object/from16 v37, v12

    move-object/from16 v39, v13

    goto :goto_13

    :goto_14
    shr-long/2addr v9, v1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, v37

    move-object/from16 v13, v39

    const/4 v1, 0x7

    goto :goto_12

    :cond_15
    move-object/from16 v37, v12

    move-object/from16 v39, v13

    const/16 v1, 0x8

    if-ne v2, v1, :cond_1f

    goto :goto_15

    :cond_16
    move-object/from16 v37, v12

    move-object/from16 v39, v13

    :goto_15
    if-eq v11, v14, :cond_1f

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v35

    move/from16 v3, v36

    move-object/from16 v12, v37

    move-object/from16 v13, v39

    const/4 v1, 0x7

    goto :goto_11

    :cond_17
    move/from16 v35, v2

    move/from16 v36, v3

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    goto/16 :goto_1b

    :cond_18
    move/from16 v35, v2

    move/from16 v36, v3

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    if-le v6, v4, :cond_1f

    iget-object v1, v7, Landroidx/collection/MutableIntObjectMap;->values:[Ljava/lang/Object;

    iget-object v2, v7, Landroidx/collection/MutableIntObjectMap;->metadata:[J

    array-length v3, v2

    const/4 v9, 0x2

    sub-int/2addr v3, v9

    if-ltz v3, :cond_1f

    const/4 v9, 0x0

    :goto_16
    aget-wide v10, v2, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    and-long v12, v12, v27

    cmp-long v12, v12, v27

    if-eqz v12, :cond_1d

    sub-int v12, v9, v3

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_17
    if-ge v13, v12, :cond_1c

    const-wide/16 v31, 0xff

    and-long v37, v10, v31

    const-wide/16 v29, 0x80

    cmp-long v37, v37, v29

    if-gez v37, :cond_1b

    shl-int/lit8 v37, v9, 0x3

    add-int v37, v37, v13

    aget-object v37, v1, v37

    move-object/from16 v14, v37

    check-cast v14, Landroidx/compose/runtime/GroupInfo;

    move-object/from16 v37, v1

    iget v1, v14, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    move-object/from16 v39, v2

    if-gt v4, v1, :cond_19

    add-int v2, v4, v5

    if-ge v1, v2, :cond_19

    sub-int/2addr v1, v4

    add-int/2addr v1, v6

    iput v1, v14, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_18

    :cond_19
    add-int/lit8 v2, v4, 0x1

    if-gt v2, v1, :cond_1a

    if-ge v1, v6, :cond_1a

    sub-int/2addr v1, v5

    iput v1, v14, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    :cond_1a
    :goto_18
    const/16 v1, 0x8

    goto :goto_19

    :cond_1b
    move-object/from16 v37, v1

    move-object/from16 v39, v2

    goto :goto_18

    :goto_19
    shr-long/2addr v10, v1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v37

    move-object/from16 v2, v39

    const/4 v14, 0x7

    goto :goto_17

    :cond_1c
    move-object/from16 v37, v1

    move-object/from16 v39, v2

    const/16 v1, 0x8

    const-wide/16 v29, 0x80

    const-wide/16 v31, 0xff

    if-ne v12, v1, :cond_1f

    goto :goto_1a

    :cond_1d
    move-object/from16 v37, v1

    move-object/from16 v39, v2

    const/16 v1, 0x8

    const-wide/16 v29, 0x80

    const-wide/16 v31, 0xff

    :goto_1a
    if-eq v9, v3, :cond_1f

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v37

    move-object/from16 v2, v39

    goto :goto_16

    :cond_1e
    move-object/from16 v26, v1

    move/from16 v35, v2

    move/from16 v36, v3

    move-object/from16 v22, v5

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move/from16 v25, v14

    :cond_1f
    :goto_1b
    move/from16 v3, v36

    goto :goto_1c

    :cond_20
    move-object/from16 v26, v1

    move/from16 v35, v2

    move/from16 v36, v3

    move-object/from16 v22, v5

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move/from16 v25, v14

    add-int/lit8 v3, v36, 0x1

    :goto_1c
    add-int/lit8 v8, v8, 0x1

    iget v1, v15, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v7, v1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/GroupInfo;

    if-eqz v1, :cond_21

    iget v1, v1, Landroidx/compose/runtime/GroupInfo;->nodeCount:I

    goto :goto_1d

    :cond_21
    iget v1, v15, Landroidx/compose/runtime/KeyInfo;->nodes:I

    :goto_1d
    add-int/2addr v6, v1

    move/from16 v15, v19

    move-object/from16 v12, v21

    move-object/from16 v5, v22

    move-object/from16 v11, v23

    move-object/from16 v13, v24

    move/from16 v14, v25

    move-object/from16 v1, v26

    move-object/from16 v9, v33

    move-object/from16 v10, v34

    move/from16 v2, v35

    goto/16 :goto_c

    :cond_22
    move/from16 v36, v3

    goto/16 :goto_b

    :cond_23
    move-object/from16 v26, v1

    move/from16 v35, v2

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    invoke-virtual/range {v33 .. v33}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v2, v1, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    move-object/from16 v3, v33

    iget v4, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v5, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v5, v5, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v5, v5, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    sub-int/2addr v2, v5

    add-int/2addr v2, v4

    iput v2, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    goto :goto_1e

    :cond_24
    move-object/from16 v3, v33

    goto :goto_1e

    :cond_25
    move-object/from16 v26, v1

    move/from16 v35, v2

    move-object v3, v9

    :goto_1e
    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :goto_1f
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v4, v2, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v4, :cond_26

    goto :goto_20

    :cond_26
    iget v4, v2, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v2, v2, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ne v4, v2, :cond_50

    :goto_20
    iget-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const-string v2, ", "

    const-string v4, "StringBuilder().apply(builderAction).toString()"

    const-string v5, "Error while pushing "

    const-string v6, ". Not all arguments were provided. Missing "

    const-string v7, " int arguments ("

    const-string v8, ") and "

    const-string v9, " object arguments ("

    const-string v10, ")."

    if-eqz v1, :cond_3e

    if-eqz p1, :cond_2b

    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    iget-object v12, v11, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v12}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v13

    if-eqz v13, :cond_2a

    invoke-virtual {v12}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_29

    iget-object v13, v12, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v14, v12, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    const/4 v15, -0x1

    add-int/2addr v14, v15

    iput v14, v12, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    aget-object v13, v13, v14

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v14, v12, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v15, v12, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    const/16 v17, 0x0

    aput-object v17, v14, v15

    iget-object v11, v11, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget v14, v12, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    iget v15, v11, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    move/from16 v19, v1

    move-object/from16 v21, v9

    const/4 v1, 0x0

    :goto_21
    iget v9, v13, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ge v1, v9, :cond_27

    const/16 v18, -0x1

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v14, v14, -0x1

    iget-object v9, v11, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    move-object/from16 v22, v10

    iget-object v10, v12, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    aget-object v23, v10, v14

    aput-object v23, v9, v15

    const/4 v9, 0x0

    aput-object v9, v10, v14

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v10, v22

    goto :goto_21

    :cond_27
    move-object/from16 v22, v10

    iget v1, v12, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget v10, v11, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    const/4 v14, 0x0

    :goto_22
    iget v15, v13, Landroidx/compose/runtime/changelist/Operation;->ints:I

    if-ge v14, v15, :cond_28

    const/16 v18, -0x1

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v1, v1, -0x1

    iget-object v15, v11, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    move-object/from16 v23, v11

    iget-object v11, v12, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    aget v24, v11, v1

    aput v24, v15, v10

    const/4 v15, 0x0

    aput v15, v11, v1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v23

    goto :goto_22

    :cond_28
    iget v1, v12, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    sub-int/2addr v1, v9

    iput v1, v12, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    iget v1, v12, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    sub-int/2addr v1, v15

    iput v1, v12, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    const/4 v1, 0x1

    goto :goto_23

    :cond_29
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot pop(), because the stack is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const-string v0, "Cannot end node insertion, there are no pending operations that can be realized."

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2b
    move/from16 v19, v1

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v1, v35

    :goto_23
    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v10, v9, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v10, :cond_3d

    const/4 v15, -0x1

    add-int/2addr v10, v15

    iput v10, v9, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v10, v9, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v9}, Landroidx/compose/runtime/SlotWriter;->endGroup()V

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v9, v9, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v9, :cond_2c

    goto/16 :goto_30

    :cond_2c
    rsub-int/lit8 v9, v10, -0x2

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v10}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    iget-object v11, v11, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v11}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_34

    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/runtime/changelist/Operation$InsertSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlots;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v13, 0x0

    invoke-static {v3, v13, v10}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    const/4 v10, 0x1

    invoke-static {v3, v10, v11}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v10, v3, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v11, v12, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v3, v11}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v13

    iget v14, v12, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v10, v13, :cond_2d

    iget v10, v3, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v3, v14}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v13

    if-ne v10, v13, :cond_2d

    :goto_24
    const/4 v2, 0x0

    goto/16 :goto_27

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_25
    if-ge v1, v11, :cond_30

    const/4 v10, 0x1

    shl-int v13, v10, v1

    iget v10, v3, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v10, v13

    if-eqz v10, :cond_2f

    if-lez v9, :cond_2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_26
    if-ge v10, v14, :cond_33

    const/4 v13, 0x1

    shl-int v15, v13, v10

    iget v13, v3, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int/2addr v13, v15

    if-eqz v13, :cond_32

    if-lez v9, :cond_31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/changelist/Operation$InsertSlots;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    :cond_32
    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9, v7, v0, v8}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    invoke-static {v2, v11, v12, v1, v13}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_34
    move-object/from16 v12, v21

    move-object/from16 v13, v22

    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    move-object/from16 v21, v12

    const/4 v12, 0x0

    invoke-static {v3, v12, v10}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    const/4 v10, 0x1

    invoke-static {v3, v10, v11}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    const/4 v10, 0x2

    invoke-static {v3, v10, v14}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v10, v3, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v11, v15, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v3, v11}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v12

    iget v14, v15, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v10, v12, :cond_36

    iget v10, v3, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v3, v14}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v12

    if-ne v10, v12, :cond_36

    new-instance v2, Landroidx/compose/runtime/changelist/FixupList;

    invoke-direct {v2}, Landroidx/compose/runtime/changelist/FixupList;-><init>()V

    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->insertFixups:Landroidx/compose/runtime/changelist/FixupList;

    goto/16 :goto_24

    :goto_27
    iput-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget v3, v3, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-nez v3, :cond_35

    goto/16 :goto_30

    :cond_35
    invoke-virtual {v0, v9, v2}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    invoke-virtual {v0, v9, v1}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    goto/16 :goto_30

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_28
    if-ge v1, v11, :cond_39

    const/4 v10, 0x1

    shl-int v12, v10, v1

    iget v10, v3, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_38

    if-lez v9, :cond_37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_29
    if-ge v10, v14, :cond_3c

    const/4 v12, 0x1

    shl-int v18, v12, v10

    iget v12, v3, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int v12, v18, v12

    if-eqz v12, :cond_3b

    if-lez v9, :cond_3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/changelist/Operation$InsertSlotsWithFixups;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    :cond_3b
    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v9, v7, v0, v8}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v21

    invoke-static {v2, v11, v9, v1, v13}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3d
    const/4 v0, 0x0

    const-string v1, "Unbalanced begin/end empty"

    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    throw v0

    :cond_3e
    move/from16 v19, v1

    move-object v13, v10

    const/4 v15, -0x1

    if-eqz p1, :cond_3f

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_3f
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v10, v1, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    iget v1, v1, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    sub-int/2addr v10, v1

    if-lez v10, :cond_48

    if-lez v10, :cond_47

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    iget-object v1, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$TrimParentValues;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v12, 0x0

    invoke-static {v1, v12, v10}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    iget v10, v1, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v12, v11, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v1, v12}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v14

    iget v15, v11, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v10, v14, :cond_40

    iget v10, v1, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v1, v15}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v14

    if-ne v10, v14, :cond_40

    goto :goto_2c

    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_2a
    if-ge v3, v12, :cond_43

    const/4 v14, 0x1

    shl-int v18, v14, v3

    iget v14, v1, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int v14, v18, v14

    if-eqz v14, :cond_42

    if-lez v10, :cond_41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_2b
    if-ge v12, v15, :cond_46

    const/16 v16, 0x1

    shl-int v18, v16, v12

    move/from16 v20, v15

    iget v15, v1, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int v15, v18, v15

    if-eqz v15, :cond_45

    if-lez v10, :cond_44

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    :cond_45
    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v20

    goto :goto_2b

    :cond_46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v10, v7, v0, v8}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v14, v9, v1, v13}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_48
    :goto_2c
    iget-object v1, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, v1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v1, v1, Landroidx/compose/runtime/SlotReader;->parent:I

    iget-object v2, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iget v4, v2, Landroidx/compose/runtime/IntStack;->tos:I

    if-lez v4, :cond_49

    iget-object v5, v2, Landroidx/compose/runtime/IntStack;->slots:[I

    add-int/lit8 v6, v4, -0x1

    aget v15, v5, v6

    goto :goto_2d

    :cond_49
    const/4 v15, -0x1

    :goto_2d
    if-gt v15, v1, :cond_4f

    if-lez v4, :cond_4a

    iget-object v5, v2, Landroidx/compose/runtime/IntStack;->slots:[I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    aget v6, v5, v4

    goto :goto_2e

    :cond_4a
    const/4 v6, -0x1

    :goto_2e
    if-ne v6, v1, :cond_4b

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v2}, Landroidx/compose/runtime/IntStack;->pop()I

    iget-object v1, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    :cond_4b
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v1, v1, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v2

    move/from16 v6, v35

    if-eq v6, v2, :cond_4c

    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCountOverrides(II)V

    :cond_4c
    if-eqz p1, :cond_4d

    const/4 v2, 0x1

    goto :goto_2f

    :cond_4d
    move v2, v6

    :goto_2f
    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    invoke-virtual {v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    move v1, v2

    :goto_30
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    iget-object v2, v2, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Pending;

    if-eqz v2, :cond_4e

    if-nez v19, :cond_4e

    iget v3, v2, Landroidx/compose/runtime/Pending;->groupIndex:I

    add-int/2addr v3, v7

    iput v3, v2, Landroidx/compose/runtime/Pending;->groupIndex:I

    :cond_4e
    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    return-void

    :cond_4f
    const-string v0, "Missed recording an endGroup"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_50
    move/from16 v6, v35

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v8}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v8

    invoke-virtual {v3, v1, v8}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v9, v9, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v4, v8, v9}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(ILjava/util/List;I)V

    move/from16 v35, v6

    goto/16 :goto_1f
.end method

.method public final endDefaults()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :cond_0
    return-void
.end method

.method public final endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    iget-object v2, v1, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    iget-object v6, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    if-eqz v6, :cond_6

    iget v7, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_2

    goto :goto_4

    :cond_2
    iget-object v7, v6, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v8, v6, Landroidx/collection/MutableObjectIntMap;->values:[I

    iget-object v9, v6, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_6

    move v11, v2

    :goto_2
    aget-wide v12, v9, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    sub-int v14, v11, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    move v4, v2

    :goto_3
    if-ge v4, v14, :cond_4

    const-wide/16 v17, 0xff

    and-long v17, v12, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_3

    shl-int/lit8 v17, v11, 0x3

    add-int v17, v17, v4

    aget-object v18, v7, v17

    aget v3, v8, v17

    if-eq v3, v5, :cond_3

    new-instance v3, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;

    invoke-direct {v3, v1, v5, v6}, Landroidx/compose/runtime/RecomposeScopeImpl$end$1$2;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;)V

    goto :goto_5

    :cond_3
    shr-long/2addr v12, v15

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    if-ne v14, v15, :cond_6

    :cond_5
    if-eq v11, v10, :cond_6

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_7

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v4, v4, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;

    iget-object v4, v4, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    const/4 v6, 0x1

    invoke-static {v4, v6, v3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v3, v4, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v6, v5, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v4, v6}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v7

    iget v8, v5, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v3, v7, :cond_8

    iget v3, v4, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v4, v8}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v7

    if-ne v3, v7, :cond_8

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    move v3, v1

    :goto_6
    const-string v7, ", "

    if-ge v1, v6, :cond_b

    const/4 v9, 0x1

    shl-int v10, v9, v1

    iget v9, v4, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_a

    if-lez v3, :cond_9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v9, v2

    :goto_7
    if-ge v2, v8, :cond_e

    const/4 v10, 0x1

    shl-int v11, v10, v2

    iget v10, v4, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_d

    if-lez v3, :cond_c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/changelist/Operation$EndCompositionScope;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error while pushing "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Not all arguments were provided. Missing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " int arguments ("

    const-string v5, ") and "

    invoke-static {v1, v3, v4, v0, v5}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " object arguments ("

    const-string v3, ")."

    invoke-static {v1, v9, v0, v2, v3}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    throw v3

    :goto_8
    if-eqz v1, :cond_13

    iget v4, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_f

    goto :goto_b

    :cond_f
    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    iget-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-eqz v4, :cond_13

    :goto_9
    iget-object v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    if-nez v3, :cond_12

    iget-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_11

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v4, v3, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    goto :goto_a

    :cond_11
    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v4, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    :goto_a
    iput-object v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    :cond_12
    iget v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    move-object v4, v1

    goto :goto_c

    :cond_13
    :goto_b
    move-object v4, v3

    :goto_c
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v4
.end method

.method public final endReusableGroup()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    iget v2, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public final endRoot()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->doneComposing$runtime_release()V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-boolean v2, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v2, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndCurrentGroup;

    iget-object v2, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    iput-boolean v0, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroup:Z

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    iget v1, v1, Landroidx/compose/runtime/IntStack;->tos:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    iget-object v1, v1, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->cleanUpCompose()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->close()V

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    return-void

    :cond_3
    const-string p0, "Start/end imbalance"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p0, "Missed recording an endGroup()"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v3
.end method

.method public final enterGroup(ZLandroidx/compose/runtime/Pending;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    iget-object v1, v1, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    iget p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->parentStateStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget p2, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->push(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :cond_0
    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    return-void
.end method

.method public final forceFreshInsertTable()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SlotTable;

    invoke-direct {v0}, Landroidx/compose/runtime/SlotTable;-><init>()V

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime_release()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    iput-object v1, v0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    :cond_1
    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    return-void
.end method

.method public final getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    iget-object v0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getDefaultsInvalid()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final getSkipping()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final insertMovableContentGuarded(Ljava/util/List;)V
    .locals 23

    move-object/from16 v7, p0

    iget-object v0, v7, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    iget-object v8, v7, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    iget-object v1, v7, Landroidx/compose/runtime/ComposerImpl;->lateChanges:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v9, v7, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v10, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    :try_start_0
    iput-object v1, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$ResetSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ResetSlots;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v11, :cond_a

    move-object/from16 v14, p1

    :try_start_1
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MovableContentStateReference;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v3, v2, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/Anchor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    iget-object v4, v2, Landroidx/compose/runtime/MovableContentStateReference;->slotTable:Landroidx/compose/runtime/SlotTable;

    :try_start_2
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v5

    new-instance v15, Landroidx/compose/runtime/internal/IntRef;

    invoke-direct {v15, v12}, Landroidx/compose/runtime/internal/IntRef;-><init>(I)V

    invoke-virtual {v9, v15, v3}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->determineMovableContentNodeIndex(Landroidx/compose/runtime/internal/IntRef;Landroidx/compose/runtime/Anchor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    if-nez v1, :cond_1

    :try_start_3
    iget-object v1, v7, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v7, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean v1, v1, Landroidx/compose/runtime/SlotWriter;->closed:Z

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->forceFreshInsertTable()V

    goto :goto_2

    :goto_1
    move-object v1, v10

    goto/16 :goto_e

    :cond_0
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iput v5, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    new-instance v5, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v5}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    new-instance v4, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$1$1;

    invoke-direct {v4, v7, v5, v6, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$1$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V

    sget-object v16, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    move-object v12, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v18

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    invoke-virtual {v9, v12, v15}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/SlotReader;->close()V

    move-object/from16 v16, v0

    move-object v0, v8

    move-object/from16 v19, v10

    move/from16 v18, v11

    move/from16 v20, v13

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :try_start_7
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    if-eqz v5, :cond_2

    :try_start_8
    iget-object v6, v5, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v6, :cond_3

    :cond_2
    :try_start_9
    iget-object v6, v1, Landroidx/compose/runtime/MovableContentStateReference;->slotTable:Landroidx/compose/runtime/SlotTable;

    :cond_3
    if-eqz v5, :cond_7

    iget-object v12, v5, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    if-eqz v12, :cond_7

    move/from16 v18, v11

    iget-boolean v11, v12, Landroidx/compose/runtime/SlotTable;->writer:Z

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_6

    iget v11, v12, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-lez v11, :cond_5

    iget-object v12, v12, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-static {v12, v14, v11}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    move-result v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    if-gez v11, :cond_4

    move-object/from16 v19, v10

    :try_start_a
    new-instance v10, Landroidx/compose/runtime/Anchor;

    invoke-direct {v10, v14}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    add-int/lit8 v11, v11, 0x1

    neg-int v11, v11

    invoke-virtual {v12, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_4
    move-object/from16 v19, v10

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/Anchor;

    :goto_4
    if-nez v10, :cond_8

    goto :goto_6

    :cond_5
    move-object/from16 v19, v10

    const-string v0, "Parameter index is out of range"

    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_6
    move-object/from16 v19, v10

    const-string/jumbo v0, "use active SlotWriter to create an anchor location instead"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :goto_5
    move-object/from16 v1, v19

    goto/16 :goto_e

    :cond_7
    move-object/from16 v19, v10

    move/from16 v18, v11

    :goto_6
    iget-object v10, v1, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/Anchor;

    :cond_8
    sget-object v11, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v14

    invoke-static {v12, v11, v14}, Landroidx/compose/runtime/ComposerKt;->collectNodesFrom$lambda$10$collectFromGroup(Landroidx/compose/runtime/SlotReader;Ljava/util/List;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    :try_start_c
    invoke-virtual {v12}, Landroidx/compose/runtime/SlotReader;->close()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_9

    invoke-virtual {v9, v11, v15}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->copyNodesToNewAnchorLocation(Ljava/util/List;Landroidx/compose/runtime/internal/IntRef;)V

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v4

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v4, v11

    invoke-virtual {v7, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_9
    :goto_7
    invoke-virtual {v9, v5, v8, v1, v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->copySlotTableToAnchorLocation(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentStateReference;)V

    invoke-virtual {v6}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    iget-object v12, v7, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v14, v7, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iget-object v5, v7, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    const/4 v3, 0x0

    iput-object v3, v7, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v3, v7, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    :try_start_e
    iput-object v11, v7, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v3

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iput v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    new-instance v10, Landroidx/compose/runtime/changelist/ChangeList;

    invoke-direct {v10}, Landroidx/compose/runtime/changelist/ChangeList;-><init>()V

    iget-object v6, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :try_start_f
    iput-object v10, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-boolean v4, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    const/4 v3, 0x0

    :try_start_10
    iput-boolean v3, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    iget-object v3, v1, Landroidx/compose/runtime/MovableContentStateReference;->composition:Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v16, v0

    iget-object v0, v2, Landroidx/compose/runtime/MovableContentStateReference;->composition:Landroidx/compose/runtime/ControlledComposition;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move/from16 v20, v4

    :try_start_11
    iget v4, v11, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v1, Landroidx/compose/runtime/MovableContentStateReference;->invalidations:Ljava/util/List;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    move-object/from16 v21, v6

    :try_start_12
    new-instance v6, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1$1;

    invoke-direct {v6, v7, v2}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1$1;-><init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v0

    move-object v0, v8

    move/from16 v8, v20

    move/from16 v20, v13

    move-object v13, v5

    move-object/from16 v5, v22

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    :try_start_13
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/runtime/ComposerImpl;->recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    iput-boolean v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    iput-object v11, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v9, v10, v15}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->includeOperationsIn(Landroidx/compose/runtime/changelist/ChangeList;Landroidx/compose/runtime/internal/IntRef;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    iput-object v12, v7, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iput-object v14, v7, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v13, v7, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    :try_start_17
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SlotReader;->close()V

    :goto_8
    iget-object v1, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$SkipToEndOfCurrentGroup;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    add-int/lit8 v13, v20, 0x1

    move-object v8, v0

    move-object/from16 v0, v16

    move/from16 v11, v18

    move-object/from16 v10, v19

    const/4 v12, 0x0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v13, v5

    move-object/from16 v22, v11

    move/from16 v8, v20

    move-object/from16 v11, v21

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v13, v5

    move-object/from16 v22, v11

    move/from16 v8, v20

    :goto_9
    move-object v11, v6

    goto :goto_a

    :catchall_8
    move-exception v0

    move v8, v4

    move-object v13, v5

    move-object/from16 v22, v11

    goto :goto_9

    :goto_a
    :try_start_18
    iput-boolean v8, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object v13, v5

    move-object/from16 v22, v11

    move-object v11, v6

    :goto_b
    :try_start_19
    iput-object v11, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :catchall_b
    move-exception v0

    move-object v13, v5

    move-object/from16 v22, v11

    :goto_c
    :try_start_1a
    iput-object v12, v7, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iput-object v14, v7, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    iput-object v13, v7, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    :catchall_c
    move-exception v0

    goto :goto_d

    :catchall_d
    move-exception v0

    move-object/from16 v22, v11

    :goto_d
    :try_start_1b
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0

    :catchall_e
    move-exception v0

    invoke-virtual {v12}, Landroidx/compose/runtime/SlotReader;->close()V

    throw v0

    :catchall_f
    move-exception v0

    move-object/from16 v19, v10

    goto/16 :goto_5

    :cond_a
    move-object/from16 v19, v10

    iget-object v0, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$EndMovableContentPlacement;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EndMovableContentPlacement;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v0, 0x0

    iput v0, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    move-object/from16 v1, v19

    iput-object v1, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    return-void

    :goto_e
    iput-object v1, v9, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    throw v0
.end method

.method public final invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    .locals 14

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    const v3, 0x78cc281

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v3, v10, p1, v11}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    iget v12, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    :try_start_0
    iput v3, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iget-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-static {v3}, Landroidx/compose/runtime/SlotWriter;->markGroup$default(Landroidx/compose/runtime/SlotWriter;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    :cond_1
    move v3, v10

    goto :goto_1

    :cond_2
    iget-object v3, v1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    :cond_3
    sget-object v6, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    const/16 v7, 0xca

    invoke-virtual {p0, v7, v10, v6, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v1, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v2, :cond_4

    if-nez p4, :cond_4

    iput-boolean v5, v1, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    iget-object v2, v1, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v3, v2, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object v5, v2, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v2, v3, v5}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v7

    new-instance v13, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v5, v1, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    iget-object v6, v1, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v9}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    iget-object v0, v1, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/CompositionContext;->insertMovableContent$runtime_release(Landroidx/compose/runtime/MovableContentStateReference;)V

    goto :goto_2

    :cond_4
    iget-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    iput-boolean v3, v1, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    new-instance v3, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;

    invoke-direct {v3, p1, v4}, Landroidx/compose/runtime/ComposerImpl$invokeMovableContentLambda$1;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x12d6006f

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/ActualJvm_jvmKt;->invokeComposable(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;)V

    iput-boolean v2, v1, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iput-object v11, v1, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput v12, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void

    :goto_3
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iput-object v11, v1, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iput v12, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    throw v0
.end method

.method public final nextSlot()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p0, :cond_1

    instance-of p0, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final rGroupIndexOf(I)I
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v0, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey(I[I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final recompose$runtime_release(Landroidx/compose/runtime/collection/ScopeMap;)Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->changes:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    iget v1, v1, Landroidx/collection/MutableScatterMap;->_size:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, v2}, Landroidx/compose/runtime/ComposerImpl;->doCompose(Landroidx/compose/runtime/collection/ScopeMap;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    iget-object p0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "Expected applyChanges() to have been called"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v2
.end method

.method public final recomposeMovableContent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ControlledComposition;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v2, 0x0

    iput v2, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_1

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v7, v6}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-virtual {p0, v7, v5}, Landroidx/compose/runtime/ComposerImpl;->tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, -0x1

    :goto_2
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    if-ltz p3, :cond_3

    check-cast p2, Landroidx/compose/runtime/CompositionImpl;

    iput-object p2, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    iput p3, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v5, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    iput v2, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    goto :goto_3

    :catchall_1
    move-exception p2

    iput-object v5, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    iput v2, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    throw p2

    :cond_3
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    :goto_3
    if-nez p2, :cond_5

    :cond_4
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    return-object p2

    :goto_4
    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    throw p1
.end method

.method public final recomposeToGroupEnd()V
    .locals 33

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v4, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    iget-object v3, v3, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v4, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v3

    add-int/2addr v3, v4

    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iget v6, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iget v7, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget v8, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v10, v10, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->findLocation(ILjava/util/List;)I

    move-result v10

    if-gez v10, :cond_0

    add-int/lit8 v10, v10, 0x1

    neg-int v10, v10

    :cond_0
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/Invalidation;

    iget v10, v9, Landroidx/compose/runtime/Invalidation;->location:I

    if-ge v10, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    move v13, v4

    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_22

    iget-object v14, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget v15, v9, Landroidx/compose/runtime/Invalidation;->location:I

    invoke-static {v15, v14}, Landroidx/compose/runtime/ComposerKt;->findLocation(ILjava/util/List;)I

    move-result v10

    if-ltz v10, :cond_2

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/Invalidation;

    :cond_2
    iget-object v10, v9, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v22, 0x7

    iget-object v9, v9, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    if-nez v10, :cond_3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    move/from16 v24, v1

    move/from16 v30, v5

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v11

    goto/16 :goto_9

    :cond_3
    iget-object v2, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    if-nez v2, :cond_6

    :cond_4
    move/from16 v24, v1

    move/from16 v30, v5

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v11

    :cond_5
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_6
    instance-of v12, v10, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v12, :cond_7

    check-cast v10, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {v10, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->checkDerivedStateChanged(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/collection/MutableScatterMap;)Z

    move-result v2

    goto :goto_2

    :cond_7
    instance-of v12, v10, Landroidx/collection/ScatterSet;

    if-eqz v12, :cond_4

    check-cast v10, Landroidx/collection/ScatterSet;

    invoke-virtual {v10}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, v10, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v10, v10, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v14, v10

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_c

    move/from16 v24, v1

    move/from16 v25, v7

    move/from16 v26, v8

    const/4 v1, 0x0

    :goto_4
    aget-wide v7, v10, v1

    move-object/from16 v28, v10

    move/from16 v27, v11

    not-long v10, v7

    shl-long v10, v10, v22

    and-long/2addr v10, v7

    and-long v10, v10, v20

    cmp-long v10, v10, v20

    if-eqz v10, :cond_b

    sub-int v10, v1, v14

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_a

    and-long v29, v7, v18

    cmp-long v29, v29, v16

    if-gez v29, :cond_9

    shl-int/lit8 v29, v1, 0x3

    add-int v29, v29, v11

    move/from16 v30, v5

    aget-object v5, v12, v29

    move-object/from16 v29, v12

    instance-of v12, v5, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v12, :cond_5

    check-cast v5, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {v5, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->checkDerivedStateChanged(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/collection/MutableScatterMap;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    :goto_6
    const/16 v5, 0x8

    goto :goto_7

    :cond_9
    move/from16 v30, v5

    move-object/from16 v29, v12

    goto :goto_6

    :goto_7
    shr-long/2addr v7, v5

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, v29

    move/from16 v5, v30

    goto :goto_5

    :cond_a
    move/from16 v30, v5

    move-object/from16 v29, v12

    const/16 v5, 0x8

    if-ne v10, v5, :cond_d

    goto :goto_8

    :cond_b
    move/from16 v30, v5

    move-object/from16 v29, v12

    :goto_8
    if-eq v1, v14, :cond_d

    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v27

    move-object/from16 v10, v28

    move-object/from16 v12, v29

    move/from16 v5, v30

    goto :goto_4

    :cond_c
    move/from16 v24, v1

    move/from16 v30, v5

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v11

    :cond_d
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_18

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v1, v1, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {v0, v13, v1, v4}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v2

    :goto_a
    if-eq v2, v4, :cond_e

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v5, v5, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v5}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v5, v5, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v5}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v2

    goto :goto_a

    :cond_e
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v5, v5, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v5}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x0

    goto :goto_b

    :cond_f
    move/from16 v5, v30

    :goto_b
    if-ne v2, v1, :cond_10

    goto :goto_e

    :cond_10
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v7

    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v8, v8, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v8}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    :cond_11
    if-ge v5, v7, :cond_13

    if-eq v2, v15, :cond_13

    add-int/lit8 v2, v2, 0x1

    :goto_c
    if-ge v2, v15, :cond_13

    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v8, v8, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v8}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v8

    add-int/2addr v8, v2

    if-lt v15, v8, :cond_11

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v10, v10, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v2, v10}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v2, 0x1

    goto :goto_d

    :cond_12
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v2

    :goto_d
    add-int/2addr v5, v2

    move v2, v8

    goto :goto_c

    :cond_13
    :goto_e
    iput v5, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->rGroupIndexOf(I)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->rGroupIndexOf(I)I

    move-result v5

    invoke-virtual {v0, v2, v5, v4, v6}, Landroidx/compose/runtime/ComposerImpl;->compoundKeyOf(IIII)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v5, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    if-eqz v5, :cond_14

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v0, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_f

    :cond_14
    move-object/from16 v23, v2

    :goto_f
    if-eqz v23, :cond_17

    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v5, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v4, v5}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v5

    add-int/2addr v5, v4

    iget v7, v2, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    if-lt v7, v4, :cond_15

    if-gt v7, v5, :cond_15

    const/4 v8, 0x1

    goto :goto_10

    :cond_15
    const/4 v8, 0x0

    :goto_10
    if-eqz v8, :cond_16

    iput v4, v2, Landroidx/compose/runtime/SlotReader;->parent:I

    iput v5, v2, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/4 v5, 0x0

    iput v5, v2, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iput v5, v2, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    move v13, v1

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x1

    goto/16 :goto_1b

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not a parent of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid restart scope"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v1, 0x0

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    iget-object v5, v2, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    if-eqz v5, :cond_1f

    iget-object v7, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    if-eqz v7, :cond_1e

    const/4 v8, 0x1

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    :try_start_0
    iget-object v8, v7, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v10, v7, Landroidx/collection/MutableObjectIntMap;->values:[I

    iget-object v7, v7, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v11, v7

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_1d

    const/4 v12, 0x0

    :goto_11
    aget-wide v14, v7, v12

    move-object/from16 v28, v2

    not-long v1, v14

    shl-long v1, v1, v22

    and-long/2addr v1, v14

    and-long v1, v1, v20

    cmp-long v1, v1, v20

    if-eqz v1, :cond_1c

    sub-int v1, v12, v11

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_1a

    and-long v31, v14, v18

    cmp-long v29, v31, v16

    if-gez v29, :cond_19

    shl-int/lit8 v29, v12, 0x3

    add-int v29, v29, v2

    move-object/from16 v31, v7

    aget-object v7, v8, v29

    aget v29, v10, v29

    invoke-interface {v5, v7}, Landroidx/compose/runtime/RecomposeScopeOwner;->recordReadOf(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_13
    const/16 v7, 0x8

    goto :goto_14

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_18

    :cond_19
    move-object/from16 v31, v7

    goto :goto_13

    :goto_14
    shr-long/2addr v14, v7

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, v31

    goto :goto_12

    :cond_1a
    move-object/from16 v31, v7

    const/16 v7, 0x8

    if-ne v1, v7, :cond_1b

    goto :goto_16

    :cond_1b
    :goto_15
    const/4 v1, 0x0

    goto :goto_17

    :cond_1c
    move-object/from16 v31, v7

    const/16 v7, 0x8

    :goto_16
    if-eq v12, v11, :cond_1b

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v28

    move-object/from16 v7, v31

    const/4 v1, 0x0

    goto :goto_11

    :cond_1d
    move-object/from16 v28, v2

    goto :goto_15

    :goto_17
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    goto :goto_19

    :goto_18
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    throw v0

    :cond_1e
    move-object/from16 v28, v2

    const/4 v1, 0x0

    :goto_19
    move-object/from16 v2, v28

    goto :goto_1a

    :cond_1f
    const/4 v1, 0x0

    :goto_1a
    iget-object v2, v2, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move/from16 v11, v27

    :goto_1b
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v5, v5, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v5, v2}, Landroidx/compose/runtime/ComposerKt;->findLocation(ILjava/util/List;)I

    move-result v5

    if-gez v5, :cond_20

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    :cond_20
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_21

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/Invalidation;

    iget v5, v2, Landroidx/compose/runtime/Invalidation;->location:I

    if-ge v5, v3, :cond_21

    move-object v9, v2

    goto :goto_1c

    :cond_21
    const/4 v9, 0x0

    :goto_1c
    move v2, v7

    move/from16 v1, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v5, v30

    goto/16 :goto_1

    :cond_22
    move/from16 v24, v1

    move/from16 v30, v5

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v11

    if-eqz v27, :cond_23

    invoke-virtual {v0, v13, v4, v4}, Landroidx/compose/runtime/ComposerImpl;->recordUpsAndDowns(III)V

    iget-object v1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v1

    add-int v5, v30, v1

    iput v5, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    add-int v7, v25, v1

    iput v7, v0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    move/from16 v1, v26

    iput v1, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    goto :goto_1d

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    :goto_1d
    iput v6, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move/from16 v1, v24

    iput-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    return-void
.end method

.method public final recordDelete()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent(I)V

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/changelist/Operation$RemoveCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$RemoveCurrentGroup;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, v1, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v1, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v1, v1, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    return-void
.end method

.method public final recordProviderUpdate(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/collection/IntMap;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/IntMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->providerUpdates:Landroidx/compose/runtime/collection/IntMap;

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget-object v0, v0, Landroidx/compose/runtime/collection/IntMap;->sparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final recordUpsAndDowns(III)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-ne p1, p2, :cond_0

    :goto_0
    move p3, p1

    goto/16 :goto_6

    :cond_0
    if-eq p1, p3, :cond_9

    if-ne p2, p3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v1

    if-ne v1, p2, :cond_2

    move p3, p2

    goto/16 :goto_6

    :cond_2
    iget-object v1, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p2, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v2

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    mul-int/lit8 v2, p1, 0x5

    add-int/lit8 v2, v2, 0x2

    aget v2, v1, v2

    mul-int/lit8 v3, p2, 0x5

    add-int/lit8 v3, v3, 0x2

    aget v3, v1, v3

    if-ne v2, v3, :cond_4

    move p3, v2

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    :goto_1
    if-lez v3, :cond_5

    if-eq v3, p3, :cond_5

    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v3, p2

    move v5, v2

    :goto_2
    if-lez v3, :cond_6

    if-eq v3, p3, :cond_6

    invoke-static {v3, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    sub-int p3, v4, v5

    move v6, p1

    move v3, v2

    :goto_3
    if-ge v3, p3, :cond_7

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x2

    aget v6, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    sub-int/2addr v5, v4

    move p3, p2

    :goto_4
    if-ge v2, v5, :cond_8

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0x2

    aget p3, v1, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move v2, p3

    move p3, v6

    :goto_5
    if-eq p3, v2, :cond_9

    mul-int/lit8 p3, p3, 0x5

    add-int/lit8 p3, p3, 0x2

    aget p3, v1, p3

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x2

    aget v2, v1, v2

    goto :goto_5

    :cond_9
    :goto_6
    if-lez p1, :cond_b

    if-eq p1, p3, :cond_b

    iget-object v1, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveUp()V

    :cond_a
    iget-object v1, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result p1

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->doRecordDownsFor(II)V

    return-void
.end method

.method public final rememberedValue()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p0, :cond_1

    instance-of p0, v0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, v0, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p0, :cond_2

    check-cast v0, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v1, v0, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final reportFreeMovableContent(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/ComposerImpl;IZI)I

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    return-void
.end method

.method public final skipCurrentGroup()V
    .locals 12

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    iget v2, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v3, v0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/4 v4, 0x0

    iget-object v5, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2, v5}, Landroidx/compose/runtime/SlotReader;->objectKey(I[I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v3

    iget v6, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/16 v8, 0xcf

    const/4 v9, 0x3

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    if-ne v1, v8, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    iget v11, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v11, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v6

    iput v10, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_3

    :cond_2
    iget v10, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v1

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    xor-int/2addr v10, v6

    :goto_1
    iput v10, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_3

    :cond_3
    instance-of v10, v2, Ljava/lang/Enum;

    if-eqz v10, :cond_4

    move-object v10, v2

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_2
    iget v11, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v11, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v10, v11

    invoke-static {v10, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_2

    :goto_3
    iget v10, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v10, v5}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    if-nez v2, :cond_6

    if-eqz v3, :cond_5

    if-ne v1, v8, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v1, v6

    invoke-static {v1, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_6

    :cond_5
    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    xor-int/2addr v0, v6

    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    xor-int/2addr v0, v1

    :goto_4
    invoke-static {v0, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_6

    :cond_6
    instance-of v0, v2, Ljava/lang/Enum;

    if-eqz v0, :cond_7

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_5
    iget v1, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v1, v9}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :goto_6
    return-void
.end method

.method public final skipReaderToGroupEnd()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v1, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-ltz v1, :cond_0

    iget-object v0, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->skipToGroupEnd()V

    return-void
.end method

.method public final skipToGroupEnd()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->groupNodeCount:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipReaderToGroupEnd()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->recomposeToGroupEnd()V

    :goto_0
    return-void

    :cond_2
    const-string p0, "No nodes can be emitted before calling skipAndEndGroup"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v7, 0x3

    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    const/16 v8, 0xcf

    if-ne v1, v8, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->hashCode()I

    move-result v8

    iget v9, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v9, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    xor-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v5, v7

    iput v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_2

    :cond_0
    iget v8, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v8, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v8, v1

    invoke-static {v8, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v5, v7

    :goto_0
    iput v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    goto :goto_2

    :cond_1
    instance-of v5, v3, Ljava/lang/Enum;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    :goto_1
    iget v8, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v8, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v5, v8

    invoke-static {v5, v7}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    :goto_2
    const/4 v5, 0x1

    if-nez v3, :cond_3

    iget v7, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    add-int/2addr v7, v5

    iput v7, v0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    :cond_3
    const/4 v7, 0x0

    if-eqz v2, :cond_4

    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v7

    :goto_3
    iget-boolean v9, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eqz v9, :cond_a

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v9, v2, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/2addr v9, v5

    iput v9, v2, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v9, v2, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-eqz v8, :cond_5

    invoke-virtual {v2, v1, v6, v5, v6}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_7

    if-nez v3, :cond_6

    move-object v3, v6

    :cond_6
    invoke-virtual {v2, v1, v3, v7, v4}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    goto :goto_4

    :cond_7
    if-nez v3, :cond_8

    move-object v3, v6

    :cond_8
    invoke-virtual {v2, v1, v3, v7, v6}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    :goto_4
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v2, :cond_9

    new-instance v3, Landroidx/compose/runtime/KeyInfo;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    rsub-int/lit8 v5, v9, -0x2

    invoke-direct {v3, v4, v1, v5, v11}, Landroidx/compose/runtime/KeyInfo;-><init>(Ljava/lang/Object;III)V

    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    iget v4, v2, Landroidx/compose/runtime/Pending;->startIndex:I

    sub-int/2addr v1, v4

    new-instance v4, Landroidx/compose/runtime/GroupInfo;

    invoke-direct {v4, v11, v1, v7}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    iget-object v1, v2, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1, v5, v4}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    iget-object v1, v2, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v0, v8, v10}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    :cond_a
    if-eq v2, v5, :cond_b

    goto :goto_5

    :cond_b
    iget-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz v2, :cond_c

    move v2, v5

    goto :goto_6

    :cond_c
    :goto_5
    move v2, v7

    :goto_6
    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-nez v9, :cond_12

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v9}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v9

    if-nez v2, :cond_e

    if-ne v9, v1, :cond_e

    iget-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v12, v9, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v13, v9, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v12, v13, :cond_d

    iget-object v13, v9, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-virtual {v9, v12, v13}, Landroidx/compose/runtime/SlotReader;->objectKey(I[I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_7

    :cond_d
    move-object v9, v10

    :goto_7
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v0, v4, v8}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(Ljava/lang/Object;Z)V

    goto :goto_b

    :cond_e
    new-instance v9, Landroidx/compose/runtime/Pending;

    iget-object v12, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget v14, v12, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v14, :cond_f

    goto :goto_a

    :cond_f
    iget v14, v12, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    :goto_8
    iget v15, v12, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v14, v15, :cond_11

    new-instance v15, Landroidx/compose/runtime/KeyInfo;

    mul-int/lit8 v16, v14, 0x5

    iget-object v11, v12, Landroidx/compose/runtime/SlotReader;->groups:[I

    aget v10, v11, v16

    invoke-virtual {v12, v14, v11}, Landroidx/compose/runtime/SlotReader;->objectKey(I[I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v11}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v18

    if-eqz v18, :cond_10

    const/4 v7, 0x1

    goto :goto_9

    :cond_10
    invoke-static {v14, v11}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v18

    move/from16 v7, v18

    :goto_9
    invoke-direct {v15, v5, v10, v14, v7}, Landroidx/compose/runtime/KeyInfo;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x3

    aget v5, v11, v16

    add-int/2addr v14, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    goto :goto_8

    :cond_11
    :goto_a
    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-direct {v9, v5, v13}, Landroidx/compose/runtime/Pending;-><init>(ILjava/util/List;)V

    iput-object v9, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    :cond_12
    :goto_b
    iget-object v5, v0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    if-eqz v5, :cond_2e

    if-eqz v3, :cond_13

    new-instance v7, Landroidx/compose/runtime/JoinedKey;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v9, v3}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_13
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_c
    iget-object v9, v5, Landroidx/compose/runtime/Pending;->keyMap$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/MutableScatterMultiMap;

    iget-object v9, v9, Landroidx/compose/runtime/MutableScatterMultiMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_17

    instance-of v11, v10, Ljava/util/List;

    if-eqz v11, :cond_15

    instance-of v11, v10, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v11, :cond_14

    instance-of v11, v10, Lkotlin/jvm/internal/markers/KMutableList;

    if-eqz v11, :cond_15

    :cond_14
    invoke-static {v10}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_15
    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v10

    :cond_16
    :goto_d
    const-string v7, "null cannot be cast to non-null type V of androidx.compose.runtime.MutableScatterMultiMap.pop_impl$lambda$1"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    :cond_17
    const/4 v12, 0x0

    :goto_e
    check-cast v12, Landroidx/compose/runtime/KeyInfo;

    iget-object v7, v5, Landroidx/compose/runtime/Pending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    iget v9, v5, Landroidx/compose/runtime/Pending;->startIndex:I

    if-nez v2, :cond_2f

    if-eqz v12, :cond_2f

    iget-object v1, v5, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v12, Landroidx/compose/runtime/KeyInfo;->location:I

    invoke-virtual {v7, v1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/GroupInfo;

    if-eqz v2, :cond_18

    iget v2, v2, Landroidx/compose/runtime/GroupInfo;->nodeIndex:I

    goto :goto_f

    :cond_18
    const/4 v2, -0x1

    :goto_f
    add-int/2addr v2, v9

    iput v2, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {v7, v1}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/GroupInfo;

    if-eqz v2, :cond_19

    iget v11, v2, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    goto :goto_10

    :cond_19
    const/4 v11, -0x1

    :goto_10
    iget v2, v5, Landroidx/compose/runtime/Pending;->groupIndex:I

    sub-int v3, v11, v2

    const/4 v12, 0x7

    const/16 v15, 0x8

    if-le v11, v2, :cond_1f

    iget-object v5, v7, Landroidx/collection/MutableIntObjectMap;->values:[Ljava/lang/Object;

    iget-object v6, v7, Landroidx/collection/MutableIntObjectMap;->metadata:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_1e

    const/4 v9, 0x0

    :goto_11
    aget-wide v13, v6, v9

    move/from16 p3, v3

    not-long v3, v13

    shl-long/2addr v3, v12

    and-long/2addr v3, v13

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v3, v3, v19

    cmp-long v3, v3, v19

    if-eqz v3, :cond_1d

    sub-int v3, v9, v7

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    rsub-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_1c

    const-wide/16 v16, 0xff

    and-long v21, v13, v16

    const-wide/16 v23, 0x80

    cmp-long v10, v21, v23

    if-gez v10, :cond_1b

    shl-int/lit8 v10, v9, 0x3

    add-int/2addr v10, v4

    aget-object v10, v5, v10

    check-cast v10, Landroidx/compose/runtime/GroupInfo;

    iget v12, v10, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    if-ne v12, v11, :cond_1a

    iput v2, v10, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    goto :goto_13

    :cond_1a
    if-gt v2, v12, :cond_1b

    if-ge v12, v11, :cond_1b

    add-int/lit8 v12, v12, 0x1

    iput v12, v10, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    :cond_1b
    :goto_13
    shr-long/2addr v13, v15

    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x7

    goto :goto_12

    :cond_1c
    if-ne v3, v15, :cond_25

    :cond_1d
    if-eq v9, v7, :cond_25

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v12, 0x7

    goto :goto_11

    :cond_1e
    move/from16 p3, v3

    goto/16 :goto_19

    :cond_1f
    move/from16 p3, v3

    if-le v2, v11, :cond_25

    iget-object v3, v7, Landroidx/collection/MutableIntObjectMap;->values:[Ljava/lang/Object;

    iget-object v4, v7, Landroidx/collection/MutableIntObjectMap;->metadata:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_25

    const/4 v6, 0x0

    :goto_14
    aget-wide v9, v4, v6

    not-long v12, v9

    const/4 v7, 0x7

    shl-long/2addr v12, v7

    and-long/2addr v12, v9

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v19

    cmp-long v12, v12, v19

    if-eqz v12, :cond_24

    sub-int v12, v6, v5

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_15
    if-ge v13, v12, :cond_23

    const-wide/16 v16, 0xff

    and-long v21, v9, v16

    const-wide/16 v23, 0x80

    cmp-long v14, v21, v23

    if-gez v14, :cond_22

    shl-int/lit8 v14, v6, 0x3

    add-int/2addr v14, v13

    aget-object v14, v3, v14

    check-cast v14, Landroidx/compose/runtime/GroupInfo;

    iget v7, v14, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    if-ne v7, v11, :cond_20

    iput v2, v14, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    goto :goto_16

    :cond_20
    add-int/lit8 v15, v11, 0x1

    if-gt v15, v7, :cond_21

    if-ge v7, v2, :cond_21

    add-int/lit8 v7, v7, -0x1

    iput v7, v14, Landroidx/compose/runtime/GroupInfo;->slotIndex:I

    :cond_21
    :goto_16
    const/16 v7, 0x8

    goto :goto_17

    :cond_22
    move v7, v15

    :goto_17
    shr-long/2addr v9, v7

    add-int/lit8 v13, v13, 0x1

    move v15, v7

    const/4 v7, 0x7

    goto :goto_15

    :cond_23
    move v7, v15

    const-wide/16 v16, 0xff

    const-wide/16 v23, 0x80

    if-ne v12, v7, :cond_25

    goto :goto_18

    :cond_24
    move v7, v15

    const-wide/16 v16, 0xff

    const-wide/16 v23, 0x80

    :goto_18
    if-eq v6, v5, :cond_25

    add-int/lit8 v6, v6, 0x1

    move v15, v7

    goto :goto_14

    :cond_25
    :goto_19
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget v3, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v4, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v4, v4, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v4, v4, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    sub-int v4, v1, v4

    add-int/2addr v4, v3

    iput v4, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    iget-object v3, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SlotReader;->reposition(I)V

    if-lez p3, :cond_26

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    invoke-virtual {v2}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    iget-object v1, v2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    move/from16 v11, p3

    const/4 v3, 0x0

    invoke-static {v1, v3, v11}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    iget v3, v1, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v4, v2, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v1, v4}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    iget v6, v2, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v3, v5, :cond_27

    iget v3, v1, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v1, v6}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v5

    if-ne v3, v5, :cond_27

    :cond_26
    move-object/from16 v2, p4

    goto :goto_1c

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1a
    const-string v7, ", "

    if-ge v3, v4, :cond_2a

    const/4 v8, 0x1

    shl-int v9, v8, v3

    iget v8, v1, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_29

    if-lez v5, :cond_28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/changelist/Operation$MoveCurrentGroup;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1b
    if-ge v8, v6, :cond_2d

    const/4 v10, 0x1

    shl-int v11, v10, v8

    iget v10, v1, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_2c

    if-lez v5, :cond_2b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_2c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while pushing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Not all arguments were provided. Missing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " int arguments ("

    const-string v4, ") and "

    invoke-static {v3, v5, v2, v0, v4}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " object arguments ("

    const-string v2, ")."

    invoke-static {v3, v9, v0, v1, v2}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :goto_1c
    invoke-virtual {v0, v2, v8}, Landroidx/compose/runtime/ComposerImpl;->startReaderGroup(Ljava/lang/Object;Z)V

    :cond_2e
    const/4 v4, 0x0

    goto/16 :goto_1f

    :cond_2f
    move-object v2, v4

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v10, v4, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v4, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iput-boolean v11, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean v4, v4, Landroidx/compose/runtime/SlotWriter;->closed:Z

    if-eqz v4, :cond_30

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v4

    iput-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_30
    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v4}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget-object v4, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v10, v4, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-eqz v8, :cond_31

    const/4 v11, 0x1

    invoke-virtual {v4, v1, v6, v11, v6}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    goto :goto_1d

    :cond_31
    if-eqz v2, :cond_33

    if-nez v3, :cond_32

    move-object v3, v6

    :cond_32
    const/4 v11, 0x0

    invoke-virtual {v4, v1, v3, v11, v2}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    goto :goto_1d

    :cond_33
    const/4 v11, 0x0

    if-nez v3, :cond_34

    move-object v3, v6

    :cond_34
    invoke-virtual {v4, v1, v3, v11, v6}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    :goto_1d
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    new-instance v2, Landroidx/compose/runtime/KeyInfo;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    rsub-int/lit8 v6, v10, -0x2

    invoke-direct {v2, v4, v1, v6, v3}, Landroidx/compose/runtime/KeyInfo;-><init>(Ljava/lang/Object;III)V

    iget v1, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    sub-int/2addr v1, v9

    new-instance v4, Landroidx/compose/runtime/GroupInfo;

    const/4 v9, 0x0

    invoke-direct {v4, v3, v1, v9}, Landroidx/compose/runtime/GroupInfo;-><init>(III)V

    invoke-virtual {v7, v6, v4}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    iget-object v1, v5, Landroidx/compose/runtime/Pending;->usedKeys:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroidx/compose/runtime/Pending;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_35

    move v7, v9

    goto :goto_1e

    :cond_35
    iget v7, v0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    :goto_1e
    invoke-direct {v10, v7, v1}, Landroidx/compose/runtime/Pending;-><init>(ILjava/util/List;)V

    goto :goto_20

    :goto_1f
    move-object v10, v4

    :goto_20
    invoke-virtual {v0, v8, v10}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void
.end method

.method public final startDefaults()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, -0x7f

    invoke-virtual {p0, v2, v1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startGroup(ILandroidx/compose/runtime/OpaqueKey;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startReaderGroup(Ljava/lang/Object;Z)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p1, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz p1, :cond_a

    iget-object p1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget p2, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {p2, p1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    goto/16 :goto_3

    :cond_0
    const-string p0, "Expected a node group"

    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_9

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p2}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_9

    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object p2, p2, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;

    iget-object p2, p2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {p2, v1, p1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget p1, p2, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v3, v2, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {p2, v3}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v4

    iget v5, v2, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne p1, v4, :cond_2

    iget p1, p2, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {p2, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v4

    if-ne p1, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move p1, v1

    move v4, p1

    :goto_0
    const/4 v6, 0x1

    const-string v7, ", "

    if-ge p1, v3, :cond_5

    shl-int/2addr v6, p1

    iget v8, p2, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_4

    if-lez v4, :cond_3

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v8, v1

    :goto_1
    if-ge v1, v5, :cond_8

    shl-int v9, v6, v1

    iget v10, p2, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_7

    if-lez v4, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/changelist/Operation$UpdateAuxData;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error while pushing "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Not all arguments were provided. Missing "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " int arguments ("

    const-string v2, ") and "

    invoke-static {p1, v4, v1, p0, v2}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " object arguments ("

    const-string v1, ")."

    invoke-static {p1, v8, p0, p2, v1}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    :cond_a
    :goto_3
    return-void
.end method

.method public final startReplaceGroup(I)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pending:Landroidx/compose/runtime/Pending;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1, v2, v2}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->validateNodeNotExpected()V

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget v3, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    xor-int/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    xor-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v4, :cond_1

    iget v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0, p1, v5, v1, v5}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v4

    if-ne v4, p1, :cond_3

    iget v4, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v6, v0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v4, v6, :cond_2

    iget-object v6, v0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v4, v6}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey(I[I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void

    :cond_3
    :goto_0
    iget v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    iget v4, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v6, v0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    iget v6, p0, Landroidx/compose/runtime/ComposerImpl;->nodeIndex:I

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->recordDelete()V

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    move-result v7

    iget-object v8, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v8, v6, v7}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeNode(II)V

    iget-object v6, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget v7, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v4, v6, v7}, Landroidx/compose/runtime/ComposerKt;->access$removeRange(ILjava/util/List;I)V

    :goto_1
    iget v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    iput-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-boolean v0, v0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    iput-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->writerHasAProvider:Z

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    :cond_6
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v0, p1, v5, v1, v5}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->insertAnchor:Landroidx/compose/runtime/Anchor;

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->enterGroup(ZLandroidx/compose/runtime/Pending;)V

    return-void
.end method

.method public final startReplaceableGroup(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean p1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidateStack:Landroidx/compose/runtime/Stack;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/ControlledComposition;

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {p1, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    iget-object v0, v0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    iput v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    iget v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_5

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v3, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v3, p1}, Landroidx/compose/runtime/ComposerKt;->findLocation(ILjava/util/List;)I

    move-result v3

    if-ltz v3, :cond_1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/Invalidation;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/SlotReader;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {v3, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    :goto_1
    if-nez p1, :cond_6

    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    and-int/lit8 p1, p1, -0x41

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    goto :goto_4

    :cond_6
    :goto_3
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :goto_4
    iget-object p1, v0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/compose/runtime/ComposerImpl;->compositionToken:I

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    :goto_5
    return-object p0
.end method

.method public final startReusableGroup(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/16 v1, 0xcf

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->getGroupAux()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusingGroup:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, p1}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startReusableNode()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x7d

    invoke-virtual {p0, v2, v1, v0, v0}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    return-void
.end method

.method public final startRoot()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->rGroupIndex:I

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v3}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionContext;->startComposing$runtime_release()V

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionContext;->getCompositionLocalScope$runtime_release()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v5, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->providersInvalid:Z

    iput-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->providerCache:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionContext;->getCollectingParameterInformation$runtime_release()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    :cond_0
    iget-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime_release()Z

    move-result v4

    iput-boolean v4, p0, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    :cond_1
    iget-object v4, p0, Landroidx/compose/runtime/ComposerImpl;->parentProvider:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    sget-object v5, Landroidx/compose/runtime/tooling/InspectionTablesKt;->LocalInspectionTables:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {v4, v5}, Landroidx/compose/runtime/CompositionLocalMapKt;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_2

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/CompositionContext;->recordInspectionTable$runtime_release(Ljava/util/Set;)V

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionContext;->getCompoundHashKey$runtime_release()I

    move-result v1

    invoke-virtual {p0, v1, v0, v3, v3}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final tryImminentInvalidation$runtime_release(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v2, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v0

    iget-boolean v2, p0, Landroidx/compose/runtime/ComposerImpl;->isComposing:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v2, v2, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    if-lt v0, v2, :cond_6

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->invalidations:Ljava/util/List;

    invoke-static {v0, p0}, Landroidx/compose/runtime/ComposerKt;->findLocation(ILjava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_2

    add-int/2addr v1, v2

    neg-int v1, v1

    instance-of v4, p2, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    new-instance v3, Landroidx/compose/runtime/Invalidation;

    invoke-direct {v3, p1, v0, p2}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Invalidation;

    instance-of p1, p2, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    if-nez p1, :cond_3

    iput-object p2, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v0, p1, Landroidx/collection/MutableScatterSet;

    if-eqz v0, :cond_4

    check-cast p1, Landroidx/collection/MutableScatterSet;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget v0, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterSet;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aput-object p2, v1, p1

    iput-object v0, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iput-object v3, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    :goto_1
    return v2

    :cond_6
    return v1
.end method

.method public final updateNodeCount(II)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    if-gez p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntIntMap;

    invoke-direct {v0}, Landroidx/collection/MutableIntIntMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v0, v0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    iput-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    move-object v0, v1

    :cond_2
    aput p2, v0, p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateNodeCountOverrides(II)V
    .locals 6

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    sub-int/2addr p2, v0

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->pendingStack:Landroidx/compose/runtime/Stack;

    iget-object v1, v0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updatedNodeCount(I)I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0, p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateNodeCount(II)V

    move v4, v1

    :goto_1
    if-ge v2, v4, :cond_1

    iget-object v5, v0, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/Pending;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p1, v3}, Landroidx/compose/runtime/Pending;->updateNodeCount(II)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez p1, :cond_2

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p1, p1, Landroidx/compose/runtime/SlotReader;->parent:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object v2, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateProviderMapGroup(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;-><init>(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)V

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->build()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Landroidx/compose/runtime/OpaqueKey;

    const/16 v1, 0xcc

    invoke-virtual {p0, v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->nextSlot()Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p1
.end method

.method public final updateRememberedValue(Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x1

    instance-of v1, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/changelist/Operation$Remember;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Remember;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    const/4 v5, 0x0

    invoke-static {v3, v5, v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v1, v3, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v6, v4, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v3, v6}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v7

    iget v8, v4, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v1, v7, :cond_0

    iget v1, v3, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v3, v8}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v7

    if-ne v1, v7, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move p1, v5

    move v1, p1

    :goto_0
    const-string v7, ", "

    if-ge p1, v6, :cond_3

    shl-int v9, v0, p1

    iget v10, v3, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    if-lez v1, :cond_1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v0

    :cond_2
    add-int/2addr p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v9, v5

    :goto_1
    if-ge v5, v8, :cond_6

    shl-int v10, v0, v5

    iget v11, v3, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_5

    if-lez v1, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/changelist/Operation$Remember;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v9, v0

    :cond_5
    add-int/2addr v5, v0

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Error while pushing "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Not all arguments were provided. Missing "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " int arguments ("

    const-string v4, ") and "

    invoke-static {p1, v1, v3, p0, v4}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " object arguments ("

    const-string v1, ")."

    invoke-static {p1, v9, p0, v0, v1}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_2
    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->abandonSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/compose/runtime/RememberObserverHolder;

    check-cast p1, Landroidx/compose/runtime/RememberObserver;

    iget-boolean v3, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v4, v3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v5, v3, Landroidx/compose/runtime/SlotWriter;->parent:I

    add-int/2addr v5, v0

    if-le v4, v5, :cond_b

    sub-int/2addr v4, v0

    iget-object v0, v3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v3, v4, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v0

    :goto_3
    move v12, v4

    move v4, v0

    move v0, v12

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget v3, v2, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-eq v4, v3, :cond_8

    if-ltz v4, :cond_8

    iget-object v0, v2, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v2, v4, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v0

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v2

    goto :goto_5

    :cond_9
    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v4, v3, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v5, v3, Landroidx/compose/runtime/SlotReader;->parent:I

    add-int/2addr v5, v0

    if-le v4, v5, :cond_b

    sub-int/2addr v4, v0

    iget-object v0, v3, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v4, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v0

    :goto_4
    move v12, v4

    move v4, v0

    move v0, v12

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v3, v2, Landroidx/compose/runtime/SlotReader;->parent:I

    if-eq v4, v3, :cond_a

    if-ltz v4, :cond_a

    iget-object v0, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v4, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v0

    goto :goto_4

    :cond_a
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v2

    :cond_b
    :goto_5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    iput-object v2, v1, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    move-object p1, v1

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateValue(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->update(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    iget-object v2, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-boolean v3, v2, Landroidx/compose/runtime/SlotReader;->hadNext:Z

    const/4 v5, 0x1

    iget-object v6, v0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    const-string v7, ")."

    const-string v8, " object arguments ("

    const-string v9, ") and "

    const-string v10, " int arguments ("

    const-string v11, ". Not all arguments were provided. Missing "

    const-string v12, "Error while pushing "

    const-string v13, "StringBuilder().apply(builderAction).toString()"

    const-string v14, ", "

    const/4 v15, 0x0

    if-eqz v3, :cond_b

    iget v3, v2, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget-object v4, v2, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v2, v2, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v2, v4}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor(I[I)I

    move-result v2

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    iget-object v2, v6, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iget-object v2, v2, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v2, v2, Landroidx/compose/runtime/SlotReader;->parent:I

    iget v4, v6, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    sub-int/2addr v2, v4

    if-gez v2, :cond_6

    iget-object v0, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v2, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v0

    iget-object v2, v6, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    sget-object v4, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE$3:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    iget-object v2, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v2, v15, v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    invoke-static {v2, v5, v0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    invoke-static {v2, v15, v3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    iget v0, v2, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    invoke-static {v2, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    iget v0, v2, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v2, v3}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v2, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_2

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v15

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v16, v7

    move v7, v15

    :goto_1
    if-ge v15, v3, :cond_5

    shl-int v17, v5, v15

    iget v3, v2, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int v3, v17, v3

    if-eqz v3, :cond_4

    if-lez v1, :cond_3

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x2

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v1, v10, v0, v9}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-static {v3, v7, v8, v2, v0}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_6
    move-object v0, v7

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    iget-object v2, v6, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    sget-object v4, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    iget-object v2, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v2, v15, v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    invoke-static {v2, v15, v3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V

    iget v1, v2, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    invoke-static {v2, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v3

    if-ne v1, v3, :cond_7

    iget v1, v2, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v2, v5}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v3

    if-ne v1, v3, :cond_7

    goto/16 :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v2, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_8

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_2

    :cond_8
    move v3, v15

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v2, v2, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_a

    if-lez v3, :cond_9

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    move v5, v15

    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v3, v10, v1, v9}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v5, v8, v2, v0}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_b
    move-object v0, v7

    iget v3, v2, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotReader;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v2

    iget-object v3, v6, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/changelist/Operation$AppendValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$AppendValue;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    invoke-static {v3, v5, v1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    iget v1, v3, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget v2, v4, Landroidx/compose/runtime/changelist/Operation;->ints:I

    invoke-static {v3, v2}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v6

    iget v7, v4, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-ne v1, v6, :cond_c

    iget v1, v3, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    invoke-static {v3, v7}, Landroidx/compose/runtime/changelist/Operations;->access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I

    move-result v6

    if-ne v1, v6, :cond_c

    :goto_4
    return-void

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v15

    :goto_5
    if-ge v6, v2, :cond_f

    shl-int v17, v5, v6

    iget v5, v3, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int v5, v17, v5

    if-eqz v5, :cond_e

    if-lez v15, :cond_d

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    :cond_e
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v5, v7, :cond_12

    const/16 v16, 0x1

    shl-int v17, v16, v5

    move/from16 v18, v7

    iget v7, v3, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int v7, v17, v7

    if-eqz v7, :cond_11

    if-lez v15, :cond_10

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/changelist/Operation$AppendValue;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    :cond_11
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v18

    goto :goto_6

    :cond_12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v15, v10, v1, v9}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v6, v8, v2, v0}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final updatedNodeCount(I)I
    .locals 2

    if-gez p1, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntIntMap;->findKeyIndex(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntIntMap;->get(I)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeCountOverrides:[I

    if-eqz v0, :cond_2

    aget v0, v0, p1

    if-ltz v0, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget-object p0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, p0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result p0

    return p0
.end method

.method public final useNode()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget v1, v0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotReader;->node(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl;->changeListWriter:Landroidx/compose/runtime/changelist/ComposerChangeListWriter;

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v2, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Landroidx/compose/runtime/Stack;

    iget-object v2, v2, Landroidx/compose/runtime/Stack;->backing:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->reusing:Z

    if-eqz p0, :cond_0

    instance-of p0, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object p0, v1, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/changelist/Operation$UseCurrentNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UseCurrentNode;

    iget-object p0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/changelist/Operations;->push(Landroidx/compose/runtime/changelist/Operation;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p0, "useNode() called while inserting"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v1
.end method

.method public final validateNodeNotExpected()V
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/ComposerImpl;->nodeExpected:Z

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
