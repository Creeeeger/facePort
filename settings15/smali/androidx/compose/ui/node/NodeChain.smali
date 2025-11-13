.class public final Landroidx/compose/ui/node/NodeChain;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public buffer:Landroidx/compose/runtime/collection/MutableVector;

.field public cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

.field public current:Landroidx/compose/runtime/collection/MutableVector;

.field public head:Landroidx/compose/ui/Modifier$Node;

.field public final innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

.field public final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field public outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

.field public final tail:Landroidx/compose/ui/node/TailModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/InnerNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p1, v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    return-void
.end method

.method public static final access$propagateCoordinator(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    :goto_0
    if-eqz p1, :cond_3

    sget-object v0, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p2, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_2

    :cond_1
    iget v0, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    instance-of v0, p0, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->create()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I

    move-result v1

    iput v1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    iput-object p0, v0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iput-object p0, v0, Landroidx/compose/ui/node/BackwardsCompatNode;->readValues:Ljava/util/HashSet;

    move-object p0, v0

    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    iget-object v0, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-eqz v0, :cond_1

    iput-object p0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    iput-object v0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    :cond_1
    iput-object p0, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    iput-object p1, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    return-object p0

    :cond_2
    const-string p0, "A ModifierNodeElement cannot return an already attached node from create() "

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v2, 0x2

    invoke-static {p0, v0, v2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->runDetachLifecycle$ui_release()V

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui_release()V

    goto :goto_0

    :cond_0
    const-string p0, "autoInvalidateRemovedNode called on unattached node"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    if-eqz v0, :cond_2

    iput-object v2, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    iput-object v1, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    :cond_2
    if-eqz v2, :cond_3

    iput-object v0, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    iput-object v1, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v2
.end method

.method public static updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    instance-of p0, p0, Landroidx/compose/ui/node/ModifierNodeElement;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    instance-of p0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    if-eqz p0, :cond_1

    check-cast p1, Landroidx/compose/ui/node/ModifierNodeElement;

    sget-object p0, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    const-string p0, "null cannot be cast to non-null type T of androidx.compose.ui.node.NodeChainKt.updateUnsafe"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/ModifierNodeElement;->update(Landroidx/compose/ui/Modifier$Node;)V

    iget-boolean p0, p2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p0, :cond_0

    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p2, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    goto :goto_0

    :cond_1
    instance-of p0, p2, Landroidx/compose/ui/node/BackwardsCompatNode;

    if-eqz p0, :cond_5

    move-object p0, p2

    check-cast p0, Landroidx/compose/ui/node/BackwardsCompatNode;

    iget-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->unInitializeModifier()V

    :cond_2
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    iget-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;->initializeModifier(Z)V

    :cond_3
    iget-boolean p0, p2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p0, :cond_4

    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_4
    iput-boolean v0, p2, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    :goto_0
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown Modifier.Node type"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final has-H91voCI$ui_release(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget p0, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final runAttachLifecycle()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->runAttachLifecycle$ui_release()V

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateInsertedNode(Landroidx/compose/ui/Modifier$Node;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V
    .locals 29

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v7, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

    if-nez v0, :cond_0

    new-instance v11, Landroidx/compose/ui/node/NodeChain$Differ;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/NodeChain$Differ;-><init>(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)V

    iput-object v11, v7, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Landroidx/compose/ui/node/NodeChain$Differ;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    iput-object v1, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    iput v8, v0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    iput-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Landroidx/compose/runtime/collection/MutableVector;

    iput-object v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v1, p5

    iput-boolean v1, v0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    :goto_0
    iget v1, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr v1, v8

    iget v2, v10, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr v2, v8

    add-int v3, v1, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x2

    div-int/2addr v3, v5

    new-instance v6, Landroidx/compose/ui/node/IntStack;

    mul-int/lit8 v8, v3, 0x3

    invoke-direct {v6, v8}, Landroidx/compose/ui/node/IntStack;-><init>(I)V

    new-instance v8, Landroidx/compose/ui/node/IntStack;

    mul-int/lit8 v9, v3, 0x4

    invoke-direct {v8, v9}, Landroidx/compose/ui/node/IntStack;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1, v9, v2}, Landroidx/compose/ui/node/IntStack;->pushRange(IIII)V

    mul-int/2addr v3, v5

    add-int/2addr v3, v4

    new-array v10, v3, [I

    new-array v11, v3, [I

    const/4 v12, 0x5

    new-array v12, v12, [I

    :goto_1
    iget v13, v8, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    if-eqz v13, :cond_1b

    iget-object v15, v8, Landroidx/compose/ui/node/IntStack;->stack:[I

    add-int/lit8 v16, v13, -0x1

    aget v14, v15, v16

    add-int/lit8 v16, v13, -0x2

    aget v9, v15, v16

    add-int/lit8 v16, v13, -0x3

    aget v5, v15, v16

    add-int/lit8 v13, v13, -0x4

    iput v13, v8, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    aget v13, v15, v13

    sub-int v15, v5, v13

    sub-int v7, v14, v9

    if-lt v15, v4, :cond_1

    if-ge v7, v4, :cond_2

    :cond_1
    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 p5, v3

    goto/16 :goto_14

    :cond_2
    add-int v16, v15, v7

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x2

    div-int/lit8 v4, v16, 0x2

    div-int/lit8 v16, v3, 0x2

    add-int/lit8 v17, v16, 0x1

    aput v13, v10, v17

    aput v5, v11, v17

    move/from16 p5, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_1a

    sub-int v17, v15, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v20, v4

    const/16 v19, 0x2

    rem-int/lit8 v4, v18, 0x2

    move/from16 v18, v7

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    neg-int v7, v3

    move/from16 v19, v15

    move v15, v7

    :goto_4
    const/16 v21, 0x4

    if-gt v15, v3, :cond_c

    if-eq v15, v7, :cond_6

    if-eq v15, v3, :cond_4

    add-int/lit8 v22, v15, 0x1

    add-int v22, v22, v16

    move/from16 v23, v1

    aget v1, v10, v22

    add-int/lit8 v22, v15, -0x1

    add-int v22, v22, v16

    move/from16 v24, v2

    aget v2, v10, v22

    if-le v1, v2, :cond_5

    goto :goto_5

    :cond_4
    move/from16 v23, v1

    move/from16 v24, v2

    :cond_5
    add-int/lit8 v1, v15, -0x1

    add-int v1, v1, v16

    aget v1, v10, v1

    add-int/lit8 v2, v1, 0x1

    goto :goto_6

    :cond_6
    move/from16 v23, v1

    move/from16 v24, v2

    :goto_5
    add-int/lit8 v1, v15, 0x1

    add-int v1, v1, v16

    aget v1, v10, v1

    move v2, v1

    :goto_6
    sub-int v22, v2, v13

    add-int v22, v22, v9

    sub-int v22, v22, v15

    if-eqz v3, :cond_8

    if-eq v2, v1, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v25, v22, -0x1

    goto :goto_8

    :cond_8
    :goto_7
    move/from16 v25, v22

    :goto_8
    move/from16 v28, v22

    move-object/from16 v22, v8

    move/from16 v8, v28

    :goto_9
    if-ge v2, v5, :cond_9

    if-ge v8, v14, :cond_9

    invoke-virtual {v0, v2, v8}, Landroidx/compose/ui/node/NodeChain$Differ;->areItemsTheSame(II)Z

    move-result v26

    if-eqz v26, :cond_9

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_9
    add-int v26, v16, v15

    aput v2, v10, v26

    move/from16 v26, v4

    if-eqz v4, :cond_a

    sub-int v4, v17, v15

    move-object/from16 v27, v6

    add-int/lit8 v6, v7, 0x1

    if-lt v4, v6, :cond_b

    add-int/lit8 v6, v3, -0x1

    if-gt v4, v6, :cond_b

    add-int v4, v16, v4

    aget v4, v11, v4

    if-gt v4, v2, :cond_b

    const/4 v4, 0x0

    aput v1, v12, v4

    const/4 v1, 0x1

    aput v25, v12, v1

    const/4 v1, 0x2

    aput v2, v12, v1

    const/4 v1, 0x3

    aput v8, v12, v1

    aput v4, v12, v21

    move/from16 v25, v5

    move/from16 v26, v14

    const/4 v1, 0x1

    const/4 v2, 0x3

    goto/16 :goto_10

    :cond_a
    move-object/from16 v27, v6

    :cond_b
    add-int/lit8 v15, v15, 0x2

    move-object/from16 v8, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v4, v26

    move-object/from16 v6, v27

    goto/16 :goto_4

    :cond_c
    move/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v27, v6

    move-object/from16 v22, v8

    rem-int/lit8 v1, v17, 0x2

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_a
    move v2, v7

    :goto_b
    if-gt v2, v3, :cond_19

    if-eq v2, v7, :cond_f

    if-eq v2, v3, :cond_e

    add-int/lit8 v4, v2, 0x1

    add-int v4, v4, v16

    aget v4, v11, v4

    add-int/lit8 v6, v2, -0x1

    add-int v6, v6, v16

    aget v6, v11, v6

    if-ge v4, v6, :cond_e

    goto :goto_c

    :cond_e
    add-int/lit8 v4, v2, -0x1

    add-int v4, v4, v16

    aget v4, v11, v4

    add-int/lit8 v6, v4, -0x1

    goto :goto_d

    :cond_f
    :goto_c
    add-int/lit8 v4, v2, 0x1

    add-int v4, v4, v16

    aget v4, v11, v4

    move v6, v4

    :goto_d
    sub-int v8, v5, v6

    sub-int/2addr v8, v2

    sub-int v8, v14, v8

    if-eqz v3, :cond_11

    if-eq v6, v4, :cond_10

    goto :goto_e

    :cond_10
    add-int/lit8 v15, v8, 0x1

    goto :goto_f

    :cond_11
    :goto_e
    move v15, v8

    :goto_f
    if-le v6, v13, :cond_12

    if-le v8, v9, :cond_12

    move/from16 v25, v5

    add-int/lit8 v5, v6, -0x1

    move/from16 v26, v14

    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v0, v5, v14}, Landroidx/compose/ui/node/NodeChain$Differ;->areItemsTheSame(II)Z

    move-result v5

    if-eqz v5, :cond_13

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v8, v8, -0x1

    move/from16 v5, v25

    move/from16 v14, v26

    goto :goto_f

    :cond_12
    move/from16 v25, v5

    move/from16 v26, v14

    :cond_13
    add-int v5, v16, v2

    aput v6, v11, v5

    if-eqz v1, :cond_18

    sub-int v5, v17, v2

    if-lt v5, v7, :cond_18

    if-gt v5, v3, :cond_18

    add-int v5, v16, v5

    aget v5, v10, v5

    if-lt v5, v6, :cond_18

    const/4 v5, 0x0

    aput v6, v12, v5

    const/4 v1, 0x1

    aput v8, v12, v1

    const/4 v2, 0x2

    aput v4, v12, v2

    const/4 v2, 0x3

    aput v15, v12, v2

    aput v1, v12, v21

    :goto_10
    invoke-static {v12}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result v3

    if-lez v3, :cond_17

    aget v3, v12, v2

    aget v2, v12, v1

    sub-int/2addr v3, v2

    const/4 v1, 0x2

    aget v4, v12, v1

    const/4 v1, 0x0

    aget v5, v12, v1

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_16

    aget v1, v12, v21

    if-eqz v1, :cond_14

    invoke-static {v12}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result v1

    move-object/from16 v6, v27

    invoke-virtual {v6, v5, v2, v1}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    goto :goto_11

    :cond_14
    move-object/from16 v6, v27

    if-le v3, v4, :cond_15

    add-int/lit8 v2, v2, 0x1

    invoke-static {v12}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result v1

    invoke-virtual {v6, v5, v2, v1}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    goto :goto_11

    :cond_15
    add-int/lit8 v5, v5, 0x1

    invoke-static {v12}, Landroidx/compose/ui/node/Snake;->getDiagonalSize-impl([I)I

    move-result v1

    invoke-virtual {v6, v5, v2, v1}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    goto :goto_11

    :cond_16
    move-object/from16 v6, v27

    invoke-virtual {v6, v5, v2, v4}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    :goto_11
    const/4 v1, 0x0

    goto :goto_12

    :cond_17
    move-object/from16 v6, v27

    goto :goto_11

    :goto_12
    aget v2, v12, v1

    const/4 v1, 0x1

    aget v3, v12, v1

    move-object/from16 v4, v22

    invoke-virtual {v4, v13, v2, v9, v3}, Landroidx/compose/ui/node/IntStack;->pushRange(IIII)V

    const/4 v1, 0x2

    aget v2, v12, v1

    const/4 v1, 0x3

    aget v1, v12, v1

    move/from16 v8, v25

    move/from16 v5, v26

    invoke-virtual {v4, v2, v8, v1, v5}, Landroidx/compose/ui/node/IntStack;->pushRange(IIII)V

    :goto_13
    const/4 v5, 0x2

    move-object/from16 v7, p0

    move/from16 v3, p5

    move-object v8, v4

    move/from16 v1, v23

    move/from16 v2, v24

    const/4 v9, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_18
    move-object/from16 v4, v22

    move/from16 v8, v25

    move/from16 v5, v26

    move-object/from16 v6, v27

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v22, v4

    move v14, v5

    move-object/from16 v27, v6

    move v5, v8

    goto/16 :goto_b

    :cond_19
    move v8, v5

    move v5, v14

    move-object/from16 v4, v22

    move-object/from16 v6, v27

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    move/from16 v7, v18

    move/from16 v15, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move-object v8, v4

    move/from16 v4, v20

    goto/16 :goto_2

    :cond_1a
    move/from16 v23, v1

    move/from16 v24, v2

    :goto_14
    move-object v4, v8

    goto :goto_13

    :cond_1b
    move/from16 v23, v1

    move/from16 v24, v2

    iget v1, v6, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    rem-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_27

    const/4 v2, 0x3

    if-le v1, v2, :cond_1c

    sub-int/2addr v1, v2

    const/4 v4, 0x0

    invoke-virtual {v6, v4, v1}, Landroidx/compose/ui/node/IntStack;->quickSort(II)V

    :goto_15
    move/from16 v1, v23

    move/from16 v2, v24

    goto :goto_16

    :cond_1c
    const/4 v4, 0x0

    goto :goto_15

    :goto_16
    invoke-virtual {v6, v1, v2, v4}, Landroidx/compose/ui/node/IntStack;->pushDiagonal(III)V

    move v1, v4

    move v2, v1

    move v3, v2

    :cond_1d
    iget v5, v6, Landroidx/compose/ui/node/IntStack;->lastIndex:I

    if-ge v1, v5, :cond_25

    iget-object v5, v6, Landroidx/compose/ui/node/IntStack;->stack:[I

    aget v7, v5, v1

    add-int/lit8 v8, v1, 0x2

    aget v8, v5, v8

    sub-int/2addr v7, v8

    add-int/lit8 v9, v1, 0x1

    aget v5, v5, v9

    sub-int/2addr v5, v8

    add-int/lit8 v1, v1, 0x3

    :goto_17
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Landroidx/compose/ui/node/NodeChain;

    if-ge v2, v7, :cond_20

    iget-object v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    const/4 v12, 0x2

    and-int/2addr v11, v12

    if-eqz v11, :cond_1f

    iget-object v11, v10, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v11, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v11, v11, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez v13, :cond_1e

    goto :goto_18

    :cond_1e
    iput-object v11, v13, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    :goto_18
    iput-object v13, v11, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v13, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v9, v13, v11}, Landroidx/compose/ui/node/NodeChain;->access$propagateCoordinator(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    :cond_1f
    invoke-static {v10}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    iput-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_20
    const/4 v12, 0x2

    :goto_19
    if-ge v3, v5, :cond_23

    iget v7, v0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    add-int/2addr v7, v3

    iget-object v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v11, v11, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v7, v11, v7

    check-cast v7, Landroidx/compose/ui/Modifier$Element;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v10}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    iput-object v7, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    if-eqz v10, :cond_22

    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    move-result-object v10

    if-eqz v10, :cond_21

    new-instance v11, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget-object v13, v9, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v11, v13, v10}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    iget-object v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v10, v11}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    iget-object v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v9, v10, v11}, Landroidx/compose/ui/node/NodeChain;->access$propagateCoordinator(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    iget-object v10, v7, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v10, v11, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v7, v11, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v11, v7, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_1a

    :cond_21
    iget-object v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v10, v7}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    :goto_1a
    iget-object v7, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->markAsAttached$ui_release()V

    iget-object v7, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->runAttachLifecycle$ui_release()V

    iget-object v7, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v7}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateInsertedNode(Landroidx/compose/ui/Modifier$Node;)V

    const/4 v10, 0x1

    goto :goto_1b

    :cond_22
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_23
    const/4 v10, 0x1

    :goto_1c
    add-int/lit8 v5, v8, -0x1

    if-lez v8, :cond_1d

    iget-object v7, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v7, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v7, v0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Landroidx/compose/runtime/collection/MutableVector;

    iget v8, v0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    add-int v11, v8, v2

    iget-object v7, v7, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v7, v7, v11

    check-cast v7, Landroidx/compose/ui/Modifier$Element;

    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Landroidx/compose/runtime/collection/MutableVector;

    add-int/2addr v8, v3

    iget-object v11, v11, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v8, v11, v8

    check-cast v8, Landroidx/compose/ui/Modifier$Element;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_24

    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8, v11}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_1d

    :cond_24
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move v8, v5

    goto :goto_1c

    :cond_25
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    move v9, v4

    :goto_1e
    if-eqz v0, :cond_26

    sget-object v1, Landroidx/compose/ui/node/NodeChainKt;->SentinelHead:Landroidx/compose/ui/node/NodeChainKt$SentinelHead$1;

    if-eq v0, v1, :cond_26

    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    or-int/2addr v9, v1

    iput v9, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1e

    :cond_26
    return-void

    :cond_27
    const-string v0, "Array size not a multiple of 3"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final syncCoordinators()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v4, :cond_0

    check-cast v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    iget-object v2, v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->layoutModifierNode:Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setLayoutModifierNode$ui_release(Landroidx/compose/ui/node/LayoutModifierNode;)V

    if-eq v2, v0, :cond_1

    iget-object v2, v4, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    goto :goto_1

    :cond_0
    new-instance v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    invoke-virtual {v0, v4}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    :cond_1
    :goto_1
    iput-object v4, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v1, v4, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    move-object v1, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)V

    :goto_2
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Landroidx/compose/ui/node/InnerNodeCoordinator;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iput-object v0, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v1, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    const-string v2, "]"

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, p0, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-ne v3, p0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
