.class public abstract Lcom/android/compose/animation/scene/DraggableHandlerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$SwipeTransition(Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/UserActionResult;Lcom/android/compose/animation/scene/Swipes;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/SwipeTransition;
    .locals 11

    move-object v0, p3

    move-object v1, p4

    move-object/from16 v2, p5

    iget-object v3, v1, Lcom/android/compose/animation/scene/Swipes;->upOrLeftResult:Lcom/android/compose/animation/scene/UserActionResult;

    iget-object v1, v1, Lcom/android/compose/animation/scene/Swipes;->downOrRightResult:Lcom/android/compose/animation/scene/UserActionResult;

    invoke-virtual {p3, v3}, Lcom/android/compose/animation/scene/UserActionResult;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v9, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p3, v1}, Lcom/android/compose/animation/scene/UserActionResult;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    new-instance v10, Lcom/android/compose/animation/scene/SwipeTransition;

    iget-object v1, v0, Lcom/android/compose/animation/scene/UserActionResult;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v2, v1}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object v6

    iget-object v1, v2, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->_userActionDistanceScope:Lcom/android/compose/animation/scene/UserActionDistanceScopeImpl;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/compose/animation/scene/UserActionDistanceScopeImpl;

    invoke-direct {v1, v2}, Lcom/android/compose/animation/scene/UserActionDistanceScopeImpl;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)V

    iput-object v1, v2, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->_userActionDistanceScope:Lcom/android/compose/animation/scene/UserActionDistanceScopeImpl;

    :cond_1
    move-object v7, v1

    iget-object v4, v0, Lcom/android/compose/animation/scene/UserActionResult;->transitionKey:Lcom/android/compose/animation/scene/TransitionKey;

    move-object v0, v10

    move-object/from16 v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/compose/animation/scene/SwipeTransition;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/UserActionDistanceScope;Landroidx/compose/foundation/gestures/Orientation;Z)V

    return-object v10

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown result "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
