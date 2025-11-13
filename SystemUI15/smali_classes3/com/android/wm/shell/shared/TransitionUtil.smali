.class public final Lcom/android/wm/shell/shared/TransitionUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 11

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    const v2, 0x43900

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-static {p1, p0}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v0

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_transition-leash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result p2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {p1, p0}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v7

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {p3, v0, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    :goto_2
    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v6}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v10

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v6

    int-to-float v6, v8

    invoke-virtual {p3, v0, v9, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/android/wm/shell/shared/TransitionUtil;->isDividerBar(Landroid/window/TransitionInfo$Change;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p3, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    invoke-virtual {p3, v0, v8, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const p0, 0x7fffffff

    invoke-virtual {p3, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_5

    :cond_5
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v6, :cond_6

    invoke-static {p1}, Lcom/android/wm/shell/shared/TransitionUtil;->isTransientLaunchOverlay(Landroid/window/TransitionInfo$Change;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p3, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3, v0, v8, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags2()I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_7

    invoke-virtual {p3, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_a

    if-eq v5, v7, :cond_9

    const/4 v1, 0x3

    if-ne v5, v1, :cond_8

    goto :goto_3

    :cond_8
    neg-int p0, v4

    sub-int/2addr p0, p2

    invoke-virtual {p3, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_5

    :cond_9
    :goto_3
    neg-int v1, v4

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v1

    sub-int/2addr p0, p2

    invoke-virtual {p3, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_5

    :cond_a
    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v4

    sub-int/2addr p0, p2

    invoke-virtual {p3, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_11

    invoke-virtual {p3, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_5

    :cond_b
    sub-int/2addr v4, p2

    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p2

    if-ne p2, v1, :cond_11

    invoke-static {p0, v7}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result p2

    :goto_4
    if-ltz p2, :cond_d

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpenOrCloseMode(I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_d
    invoke-virtual {p3, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_5

    :cond_e
    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v2, :cond_f

    sub-int/2addr v4, p2

    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v4

    sub-int/2addr p0, p2

    invoke-virtual {p3, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v4

    sub-int/2addr p0, p2

    invoke-virtual {p3, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_11
    :goto_5
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p3, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/android/wm/shell/shared/TransitionUtil;->isDividerBar(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-nez p0, :cond_12

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0, v8, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_12
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz p0, :cond_13

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->enableIgnoreToUpdateByOtherProcess()V

    :cond_13
    return-object v0
.end method

.method public static getMergeableTasks(Landroid/window/TransitionInfo;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Lcom/android/wm/shell/shared/TransitionUtil$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method public static hasDisplayChange(Landroid/window/TransitionInfo;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isClosingType(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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

.method public static isDividerBar(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/wm/shell/shared/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x800000

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHomeOrRecents(Landroid/window/TransitionInfo$Change;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNonApp(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOpenOrCloseMode(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isOpeningType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isOrderOnly(Landroid/window/TransitionInfo$Change;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isTransientLaunchOverlay(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/wm/shell/shared/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWallpaper(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static newModeToLegacyMode(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;
    .locals 38

    invoke-static/range {p0 .. p0}, Lcom/android/wm/shell/shared/TransitionUtil;->isDividerBar(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/RemoteAnimationTarget;

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->newModeToLegacyMode(I)I

    move-result v4

    new-instance v3, Landroid/graphics/Point;

    move-object v10, v3

    invoke-direct {v3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    new-instance v1, Landroid/app/WindowConfiguration;

    move-object v13, v1

    invoke-direct {v1}, Landroid/app/WindowConfiguration;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7f2

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/wm/shell/shared/TransitionUtil;->isTransientLaunchOverlay(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/RemoteAnimationTarget;

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->newModeToLegacyMode(I)I

    move-result v4

    new-instance v3, Landroid/graphics/Point;

    move-object v10, v3

    invoke-direct {v3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    new-instance v1, Landroid/app/WindowConfiguration;

    move-object v13, v1

    invoke-direct {v1}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v14, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xa48

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    xor-int/2addr v5, v3

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getInsetsForRecentsTransition()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v21, v4

    move/from16 v32, v5

    move-object/from16 v31, v6

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/app/WindowConfiguration;

    invoke-direct {v4}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v5, -0x1

    move/from16 v32, v3

    move-object/from16 v31, v4

    move/from16 v21, v5

    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v5, Landroid/view/RemoteAnimationTarget;

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/shared/TransitionUtil;->newModeToLegacyMode(I)I

    move-result v22

    if-nez p3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v24, v1

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v24, v3

    :goto_2
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v30, v6

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v34, v6

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->isAllowEnterPip()Z

    move-result v36

    const/16 v37, -0x1

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v33, 0x0

    move-object/from16 v20, v5

    move-object/from16 v23, p2

    move-object/from16 v26, v0

    move/from16 v27, p1

    move-object/from16 v29, v4

    move-object/from16 v35, v2

    invoke-direct/range {v20 .. v37}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {v5, v1}, Landroid/view/RemoteAnimationTarget;->setWillShowImeOnTarget(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Landroid/view/RemoteAnimationTarget;->setRotationChange(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    move-result v0

    iput v0, v5, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    return-object v5
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;IZLandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;
    .locals 0

    invoke-static {p3, p0, p1, p4}, Lcom/android/wm/shell/shared/TransitionUtil;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object p3

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p4

    invoke-virtual {p5, p4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p0, p1, p3, p2}, Lcom/android/wm/shell/shared/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I
    .locals 1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result p0

    if-ltz p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
