.class public abstract Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/SceneTransitionLayoutState;


# instance fields
.field public final activeTransitionLinks:Ljava/util/Map;

.field public final creationThread:Ljava/lang/Thread;

.field public final enableInterruptions:Z

.field public final finishedTransitions:Ljava/util/Map;

.field public final stateLinks:Ljava/util/List;

.field public final transitionStates$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/SceneKey;",
            "Ljava/util/List<",
            "Lcom/android/compose/animation/scene/transition/link/StateLink;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->stateLinks:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->enableInterruptions:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    iput-object p2, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->creationThread:Ljava/lang/Thread;

    new-instance p2, Lcom/android/compose/animation/scene/TransitionState$Idle;

    invoke-direct {p2, p1}, Lcom/android/compose/animation/scene/TransitionState$Idle;-><init>(Lcom/android/compose/animation/scene/SceneKey;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->transitionStates$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->activeTransitionLinks:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishedTransitions:Ljava/util/Map;

    return-void
.end method

.method public static synthetic getFinishedTransitions$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract canChangeScene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Z
.end method

.method public final checkThread$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->creationThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->creationThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n                    Only the original thread that created a SceneTransitionLayoutState can mutate it\n                      Expected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n                      Current: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n                "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->checkThread$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()V

    iget-object v0, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishedTransitions:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/SceneKey;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Transition "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was finished multiple times with different idleScene ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "Check failed."

    if-ge v3, v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/compose/animation/scene/TransitionState;

    instance-of v5, v5, Lcom/android/compose/animation/scene/TransitionState$Transition;

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishedTransitions:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object p1

    instance-of v1, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/android/compose/animation/scene/TransitionState$Transition;

    goto :goto_1

    :cond_5
    move-object p1, v3

    :goto_1
    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->activeTransitionLinks:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/compose/animation/scene/transition/link/StateLink;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;

    iget-object v7, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v6, v6, Lcom/android/compose/animation/scene/transition/link/StateLink;->target:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v7, v5, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v6, v5, v7}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    goto :goto_2

    :cond_7
    iget-object v7, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v6, v6, Lcom/android/compose/animation/scene/transition/link/StateLink;->target:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v7, v5, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v6, v5, v7}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    goto :goto_2

    :cond_8
    iget-object v6, v6, Lcom/android/compose/animation/scene/transition/link/StateLink;->target:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object v7, v5, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v6, v5, v7}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->activeTransitionLinks:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_4
    if-ge v2, p1, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/compose/animation/scene/TransitionState;

    iget-object v1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishedTransitions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishedTransitions:Ljava/util/Map;

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/android/compose/animation/scene/SceneKey;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    if-ne v2, p1, :cond_e

    iget-object p1, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishedTransitions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lcom/android/compose/animation/scene/TransitionState$Idle;

    if-eqz v3, :cond_c

    invoke-direct {p1, v3}, Lcom/android/compose/animation/scene/TransitionState$Idle;-><init>(Lcom/android/compose/animation/scene/SceneKey;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->setTransitionStates(Ljava/util/List;)V

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-lez v2, :cond_f

    invoke-interface {v0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->setTransitionStates(Ljava/util/List;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public final getCurrentTransitions()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/compose/animation/scene/TransitionState$Idle;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionState()Lcom/android/compose/animation/scene/TransitionState;
    .locals 0

    invoke-virtual {p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/TransitionState;

    return-object p0
.end method

.method public final getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->transitionStates$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public abstract onChangeScene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/SceneKey;)V
.end method

.method public final setTransitionStates(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->transitionStates$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final startTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->checkThread$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()V

    instance-of v2, v1, Lcom/android/compose/animation/scene/SwipeTransition;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/compose/animation/scene/SwipeTransition;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/compose/animation/scene/SwipeTransition;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->getTransitions()Lcom/android/compose/animation/scene/SceneTransitions;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getKey()Lcom/android/compose/animation/scene/TransitionKey;

    move-result-object v5

    iget-object v6, v4, Lcom/android/compose/animation/scene/SceneTransitions;->transitionCache:Ljava/util/Map;

    check-cast v6, Ljava/util/LinkedHashMap;

    iget-object v7, v1, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v8, Ljava/util/Map;

    iget-object v6, v1, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_8

    new-instance v8, Lcom/android/compose/animation/scene/SceneTransitions$findSpec$spec$1;

    invoke-direct {v8, v7, v6}, Lcom/android/compose/animation/scene/SceneTransitions$findSpec$spec$1;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)V

    invoke-virtual {v4, v7, v6, v5, v8}, Lcom/android/compose/animation/scene/SceneTransitions;->transition(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/TransitionSpecImpl;

    move-result-object v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance v8, Lcom/android/compose/animation/scene/SceneTransitions$findSpec$reversed$1;

    invoke-direct {v8, v6, v7}, Lcom/android/compose/animation/scene/SceneTransitions$findSpec$reversed$1;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)V

    invoke-virtual {v4, v7, v6, v5, v8}, Lcom/android/compose/animation/scene/SceneTransitions;->transition(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/TransitionSpecImpl;

    move-result-object v8

    if-eqz v8, :cond_5

    new-instance v4, Lcom/android/compose/animation/scene/TransitionSpecImpl;

    new-instance v10, Lcom/android/compose/animation/scene/TransitionSpecImpl$reversed$1;

    invoke-direct {v10, v8}, Lcom/android/compose/animation/scene/TransitionSpecImpl$reversed$1;-><init>(Lcom/android/compose/animation/scene/TransitionSpecImpl;)V

    iget-object v11, v8, Lcom/android/compose/animation/scene/TransitionSpecImpl;->to:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v12, v8, Lcom/android/compose/animation/scene/TransitionSpecImpl;->from:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v8, v8, Lcom/android/compose/animation/scene/TransitionSpecImpl;->key:Lcom/android/compose/animation/scene/TransitionKey;

    invoke-direct {v4, v8, v11, v12, v10}, Lcom/android/compose/animation/scene/TransitionSpecImpl;-><init>(Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/jvm/functions/Function0;)V

    move-object v8, v4

    goto :goto_2

    :cond_5
    new-instance v8, Lcom/android/compose/animation/scene/SceneTransitions$findSpec$relaxedSpec$1;

    invoke-direct {v8, v7, v6}, Lcom/android/compose/animation/scene/SceneTransitions$findSpec$relaxedSpec$1;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)V

    invoke-virtual {v4, v7, v6, v5, v8}, Lcom/android/compose/animation/scene/SceneTransitions;->transition(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/TransitionSpecImpl;

    move-result-object v8

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    new-instance v8, Lcom/android/compose/animation/scene/SceneTransitions$findSpec$1;

    invoke-direct {v8, v6, v7}, Lcom/android/compose/animation/scene/SceneTransitions$findSpec$1;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;)V

    invoke-virtual {v4, v7, v6, v5, v8}, Lcom/android/compose/animation/scene/SceneTransitions;->transition(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/TransitionSpecImpl;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v8, Lcom/android/compose/animation/scene/TransitionSpecImpl;

    new-instance v10, Lcom/android/compose/animation/scene/TransitionSpecImpl$reversed$1;

    invoke-direct {v10, v4}, Lcom/android/compose/animation/scene/TransitionSpecImpl$reversed$1;-><init>(Lcom/android/compose/animation/scene/TransitionSpecImpl;)V

    iget-object v11, v4, Lcom/android/compose/animation/scene/TransitionSpecImpl;->to:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v12, v4, Lcom/android/compose/animation/scene/TransitionSpecImpl;->from:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v4, v4, Lcom/android/compose/animation/scene/TransitionSpecImpl;->key:Lcom/android/compose/animation/scene/TransitionKey;

    invoke-direct {v8, v4, v11, v12, v10}, Lcom/android/compose/animation/scene/TransitionSpecImpl;-><init>(Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_7
    new-instance v8, Lcom/android/compose/animation/scene/TransitionSpecImpl;

    sget-object v4, Lcom/android/compose/animation/scene/TransformationSpec;->Companion:Lcom/android/compose/animation/scene/TransformationSpec$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/compose/animation/scene/TransformationSpec$Companion;->EmptyProvider:Lkotlin/jvm/functions/Function0;

    invoke-direct {v8, v3, v7, v6, v4}, Lcom/android/compose/animation/scene/TransitionSpecImpl;-><init>(Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/jvm/functions/Function0;)V

    :goto_2
    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    check-cast v8, Lcom/android/compose/animation/scene/TransitionSpecImpl;

    iget-object v4, v8, Lcom/android/compose/animation/scene/TransitionSpecImpl;->transformationSpec:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iput-object v4, v1, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    if-eqz v2, :cond_9

    invoke-interface/range {p0 .. p0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->getTransitions()Lcom/android/compose/animation/scene/SceneTransitions;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Lcom/android/compose/animation/scene/SceneTransitions;->overscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->getTransitions()Lcom/android/compose/animation/scene/SceneTransitions;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Lcom/android/compose/animation/scene/SceneTransitions;->overscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    move-result-object v2

    iput-object v3, v1, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromOverscrollSpec:Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    iput-object v2, v1, Lcom/android/compose/animation/scene/TransitionState$Transition;->toOverscrollSpec:Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    goto :goto_3

    :cond_9
    iput-object v3, v1, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromOverscrollSpec:Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    iput-object v3, v1, Lcom/android/compose/animation/scene/TransitionState$Transition;->toOverscrollSpec:Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    :goto_3
    iget-object v2, v0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->activeTransitionLinks:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/compose/animation/scene/transition/link/StateLink;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;

    iget-object v4, v4, Lcom/android/compose/animation/scene/transition/link/StateLink;->target:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v3}, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    goto :goto_4

    :cond_a
    iget-object v2, v0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->activeTransitionLinks:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v2, v0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->stateLinks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_5
    const/4 v8, 0x1

    if-ge v5, v3, :cond_12

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/compose/animation/scene/transition/link/StateLink;

    iget-object v10, v9, Lcom/android/compose/animation/scene/transition/link/StateLink;->transitionLinks:Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_e

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;

    iget-object v4, v15, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->sourceFrom:Lcom/android/compose/animation/scene/SceneKey;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v7}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    iget-object v4, v15, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->sourceTo:Lcom/android/compose/animation/scene/SceneKey;

    if-eqz v4, :cond_c

    invoke-virtual {v4, v6}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v8, :cond_10

    iget-object v4, v9, Lcom/android/compose/animation/scene/transition/link/StateLink;->target:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v4}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;

    iget-object v12, v11, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->targetFrom:Lcom/android/compose/animation/scene/SceneKey;

    if-eqz v12, :cond_f

    invoke-virtual {v12, v10}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    :cond_f
    iget-object v12, v11, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->targetTo:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    new-instance v13, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;

    iget-object v11, v11, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->targetTransitionKey:Lcom/android/compose/animation/scene/TransitionKey;

    invoke-direct {v13, v1, v10, v12, v11}, Lcom/android/compose/animation/scene/transition/link/LinkedTransition;-><init>(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    invoke-virtual {v4, v13, v8}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->startTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Z)V

    iget-object v4, v0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->activeTransitionLinks:Ljava/util/Map;

    invoke-interface {v4, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More than one link matched."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_12
    iget-boolean v2, v0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->enableInterruptions:Z

    const-string v3, "Check failed."

    if-nez v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v8, :cond_13

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->setTransitionStates(Ljava/util/List;)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/animation/scene/TransitionState;

    instance-of v4, v2, Lcom/android/compose/animation/scene/TransitionState$Idle;

    if-eqz v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v8, :cond_15

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->setTransitionStates(Ljava/util/List;)V

    goto/16 :goto_d

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    instance-of v4, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;

    if-eqz v4, :cond_20

    check-cast v2, Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-virtual {v2}, Lcom/android/compose/animation/scene/TransitionState$Transition;->finish()Lkotlinx/coroutines/Job;

    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_17

    move v12, v8

    goto :goto_8

    :cond_17
    const/4 v12, 0x0

    :goto_8
    if-eqz p2, :cond_19

    if-eqz v12, :cond_18

    goto :goto_9

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->setTransitionStates(Ljava/util/List;)V

    goto/16 :goto_d

    :cond_19
    :goto_9
    if-eqz v12, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Potential leak detected in SceneTransitionLayoutState!\n  Some transition(s) never called STLState.finishTransition().\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  Transitions (size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "):"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v6, :cond_1b

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/compose/animation/scene/TransitionState;

    check-cast v7, Lcom/android/compose/animation/scene/TransitionState$Transition;

    iget-object v9, v0, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishedTransitions:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    const-string/jumbo v9, "x"

    goto :goto_b

    :cond_1a
    const-string v9, " "

    :goto_b
    const-string v10, "  ["

    const-string v11, "] "

    invoke-static {v10, v9, v11}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SceneTransitionLayoutState"

    invoke-static {v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getCurrentTransitions()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v8

    if-eqz v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-interface {v2}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    goto :goto_c

    :cond_1d
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v8, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionStates$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/compose/animation/scene/TransitionState$Idle;

    if-eqz v2, :cond_1e

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->setTransitionStates(Ljava/util/List;)V

    goto :goto_d

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_d
    return-void
.end method
