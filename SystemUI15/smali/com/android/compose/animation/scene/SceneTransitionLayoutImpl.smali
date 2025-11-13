.class public final Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public _userActionDistanceScope:Lcom/android/compose/animation/scene/UserActionDistanceScopeImpl;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public density:Landroidx/compose/ui/unit/Density;

.field public final elementStateScope:Lcom/android/compose/animation/scene/ElementStateScopeImpl;

.field public final elements:Ljava/util/Map;

.field public final horizontalDraggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

.field public lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

.field public final scenes:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

.field public final state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

.field public swipeSourceDetector:Lcom/android/compose/animation/scene/SwipeSourceDetector;

.field public transitionInterceptionThreshold:F

.field public final verticalDraggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Landroidx/compose/ui/unit/Density;Lcom/android/compose/animation/scene/SwipeSourceDetector;FLkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;",
            "Landroidx/compose/ui/unit/Density;",
            "Lcom/android/compose/animation/scene/SwipeSourceDetector;",
            "F",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    iput-object p3, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->swipeSourceDetector:Lcom/android/compose/animation/scene/SwipeSourceDetector;

    iput-object p6, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-direct {p2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;-><init>()V

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scenes:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->elements:Ljava/util/Map;

    new-instance p2, Lcom/android/compose/animation/scene/ElementStateScopeImpl;

    invoke-direct {p2, p0}, Lcom/android/compose/animation/scene/ElementStateScopeImpl;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)V

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->elementStateScope:Lcom/android/compose/animation/scene/ElementStateScopeImpl;

    invoke-virtual {p0, p5}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->updateScenes$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    sget-object p3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p2, p0, p3, p6}, Lcom/android/compose/animation/scene/DraggableHandlerImpl;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->horizontalDraggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    new-instance p2, Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    sget-object p3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    invoke-direct {p2, p0, p3, p6}, Lcom/android/compose/animation/scene/DraggableHandlerImpl;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->verticalDraggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->checkThread$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout()V

    return-void
.end method

.method public static final access$BackHandler(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x2dee9427

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v3, v0, 0xb

    if-ne v3, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_6

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object v1

    iget-object v1, v1, Lcom/android/compose/animation/scene/Scene;->_userActions$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v3, Lcom/android/compose/animation/scene/Back;->INSTANCE:Lcom/android/compose/animation/scene/Back;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/animation/scene/UserActionResult;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/android/compose/animation/scene/UserActionResult;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v4

    :goto_4
    const v6, -0x59601609

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    and-int/lit8 v0, v0, 0xe

    if-ne v0, v2, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    or-int v0, v6, v3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_7

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_8

    :cond_7
    new-instance v2, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$BackHandler$1$1;

    invoke-direct {v2, v1, p0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$BackHandler$1$1;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v5, v2, p1, v4, v4}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    :goto_6
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$BackHandler$2;

    invoke-direct {v0, p0, p2}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$BackHandler$2;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method


# virtual methods
.method public final Content$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/SwipeDetector;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x6178f5bc

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x380

    if-nez v1, :cond_5

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v0, v0, 0x2db

    const/16 v1, 0x92

    if-ne v0, v1, :cond_7

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_7
    :goto_4
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/compose/animation/scene/SwipeToSceneElement;

    iget-object v1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->horizontalDraggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    invoke-direct {v0, v1, p2}, Lcom/android/compose/animation/scene/SwipeToSceneElement;-><init>(Lcom/android/compose/animation/scene/DraggableHandlerImpl;Lcom/android/compose/animation/scene/SwipeDetector;)V

    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v1, Lcom/android/compose/animation/scene/SwipeToSceneElement;

    iget-object v2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->verticalDraggableHandler:Lcom/android/compose/animation/scene/DraggableHandlerImpl;

    invoke-direct {v1, v2, p2}, Lcom/android/compose/animation/scene/SwipeToSceneElement;-><init>(Lcom/android/compose/animation/scene/DraggableHandlerImpl;Lcom/android/compose/animation/scene/SwipeDetector;)V

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v1, Lcom/android/compose/animation/scene/LayoutElement;

    invoke-direct {v1, p0}, Lcom/android/compose/animation/scene/LayoutElement;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)V

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget v2, p3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {p3, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v5, p3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_c

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_8

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v3, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_9

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    invoke-static {v2, p3, v2, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_a
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    new-instance v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$Content$1$1;

    invoke-direct {v0, p0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$Content$1$1;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)V

    const v1, -0x292e9db7

    invoke-static {v1, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p3, v1}, Landroidx/compose/ui/layout/LookaheadScopeKt;->LookaheadScope(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_b

    new-instance v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$Content$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$Content$2;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/SwipeDetector;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;
    .locals 2

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scenes:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/Scene;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scene "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not configured"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateScenes$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lkotlin/jvm/functions/Function1;)V
    .locals 4

    iget-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scenes:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->keys:Landroidx/compose/runtime/snapshots/SnapshotMapKeySet;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v3, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;

    invoke-direct {v3, v1, p0, v2}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;-><init>(Ljava/util/Set;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
