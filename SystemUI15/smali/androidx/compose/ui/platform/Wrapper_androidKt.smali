.class public abstract Landroidx/compose/ui/platform/Wrapper_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/Wrapper_androidKt;->DefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public static final setContent(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Landroidx/compose/ui/platform/WrappedComposition;
    .locals 10

    const/4 v0, 0x1

    sget-object v1, Landroidx/compose/ui/platform/GlobalSnapshotManager;->INSTANCE:Landroidx/compose/ui/platform/GlobalSnapshotManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/platform/GlobalSnapshotManager;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v0, v3, v3, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Companion:Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Main$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v4

    new-instance v5, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;

    invoke-direct {v5, v1, v3}, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {v4, v3, v3, v5, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v4, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    new-instance v5, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$2;

    invoke-direct {v5, v1}, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$2;-><init>(Lkotlinx/coroutines/channels/Channel;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->globalWriteObservers:Ljava/util/List;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot()V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v4, :cond_1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    goto :goto_2

    :cond_1
    :goto_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1

    :goto_2
    if-nez v1, :cond_3

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeView;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V

    sget-object v4, Landroidx/compose/ui/platform/Wrapper_androidKt;->DefaultLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1, v4}, Landroidx/compose/ui/platform/AbstractComposeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    sget-object p0, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    new-instance v6, Landroidx/compose/ui/node/UiApplier;

    iget-object p0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->root:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v6, p0}, Landroidx/compose/ui/node/UiApplier;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    sget-object p0, Landroidx/compose/runtime/CompositionKt;->PendingApplyNoModifications:Ljava/lang/Object;

    new-instance p0, Landroidx/compose/runtime/CompositionImpl;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v4, 0x7f0a0edb

    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroidx/compose/ui/platform/WrappedComposition;

    if-eqz v6, :cond_4

    check-cast v5, Landroidx/compose/ui/platform/WrappedComposition;

    goto :goto_3

    :cond_4
    move-object v5, v3

    :goto_3
    if-nez v5, :cond_5

    new-instance v5, Landroidx/compose/ui/platform/WrappedComposition;

    invoke-direct {v5, v1, p0}, Landroidx/compose/ui/platform/WrappedComposition;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/Composition;)V

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v5, p2}, Landroidx/compose/ui/platform/WrappedComposition;->setContent(Lkotlin/jvm/functions/Function2;)V

    iget-object p0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    iput-object p0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    iget-object p0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->root:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    instance-of p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-eqz p1, :cond_6

    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->resetPointerInputHandler()V

    :cond_6
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean p2, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p2, :cond_17

    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    new-instance p2, Landroidx/compose/ui/node/NestedVectorStack;

    invoke-direct {p2}, Landroidx/compose/ui/node/NestedVectorStack;-><init>()V

    :goto_4
    if-eqz p0, :cond_18

    if-nez p1, :cond_7

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    :cond_7
    iget v1, p1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-eqz v1, :cond_10

    :goto_5
    if-eqz p1, :cond_10

    iget v1, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_f

    move-object v1, p1

    move-object v6, v3

    :goto_6
    if-eqz v1, :cond_f

    instance-of v7, v1, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v7, :cond_8

    check-cast v1, Landroidx/compose/ui/node/PointerInputModifierNode;

    instance-of v7, v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    if-eqz v7, :cond_e

    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->resetPointerInputHandler()V

    goto :goto_9

    :cond_8
    iget v7, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_e

    instance-of v7, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_e

    move-object v7, v1

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v8, v2

    :goto_7
    if-eqz v7, :cond_d

    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_c

    add-int/2addr v8, v0

    if-ne v8, v0, :cond_9

    move-object v1, v7

    goto :goto_8

    :cond_9
    if-nez v6, :cond_a

    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v9, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v1, v3

    :cond_b
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_c
    :goto_8
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_7

    :cond_d
    if-ne v8, v0, :cond_e

    goto :goto_6

    :cond_e
    :goto_9
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_6

    :cond_f
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_a

    :cond_11
    iget p1, p2, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    iget-object v1, p2, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    array-length v4, v1

    if-lt p1, v4, :cond_12

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p2, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    iget-object v1, p2, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/compose/runtime/collection/MutableVector;

    iput-object v1, p2, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    :cond_12
    iget-object v1, p2, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    iget v4, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr v4, v0

    aput v4, v1, p1

    iget-object v1, p2, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    aput-object p0, v1, p1

    iget p0, p2, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    add-int/2addr p0, v0

    iput p0, p2, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    :goto_a
    iget p0, p2, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    if-lez p0, :cond_16

    iget-object p1, p2, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    add-int/lit8 v1, p0, -0x1

    aget p1, p1, v1

    if-ltz p1, :cond_16

    if-lez p0, :cond_15

    iget-object p0, p2, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    aget-object p0, p0, v1

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-lez p1, :cond_13

    iget-object v4, p2, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    aget v6, v4, v1

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v1

    goto :goto_b

    :cond_13
    if-nez p1, :cond_14

    iget-object v4, p2, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    aput-object v3, v4, v1

    iget v1, p2, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p2, Landroidx/compose/ui/node/NestedVectorStack;->size:I

    :cond_14
    :goto_b
    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    goto :goto_c

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call pop() on an empty stack. Guard with a call to isNotEmpty()"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    move-object p0, v3

    :goto_c
    move-object p1, v3

    goto/16 :goto_4

    :cond_17
    const-string/jumbo p0, "visitSubtree called on an unattached node"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v3

    :cond_18
    return-object v5
.end method
