.class public final Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field final mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

.field public final mTransitionCallbacks:Landroid/util/ArrayMap;

.field final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitionCallbacks:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance p3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    invoke-direct {p3, p1, p0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;-><init>(Landroid/content/Context;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V

    iput-object p3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    new-instance p1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;
    .locals 1

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static shouldAnimate(Landroid/window/TransitionInfo;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/16 v1, 0x3f9

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x4

    const/16 v6, 0x200

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    const/16 v7, 0x400

    invoke-virtual {v4, v7}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/core/CompatSandbox;->isAppCompatOverrideEnabled(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    if-ne v6, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getPopOverAnimationNeeded()Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    if-nez v3, :cond_5

    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x1000000

    invoke-virtual {v4, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_8

    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v1

    :goto_2
    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_3
    if-ltz v4, :cond_d

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    invoke-static {v8}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v7, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_a
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    invoke-static {v8}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v8

    if-ne v8, v2, :cond_b

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_b
    :goto_4
    move v0, v1

    goto :goto_8

    :cond_c
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_6
    if-ltz v4, :cond_f

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_7
    if-ltz v3, :cond_11

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_11
    move v0, v2

    :goto_8
    if-nez v0, :cond_12

    return v1

    :cond_12
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_9

    :cond_13
    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_14

    move v2, v1

    goto :goto_9

    :cond_14
    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    if-ne v0, v2, :cond_15

    goto :goto_9

    :cond_15
    invoke-static {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->isSupportedOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;)Z

    move-result p0

    xor-int/2addr v2, p0

    :goto_9
    return v2
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mActiveAnimator:Landroid/animation/Animator;

    if-nez p0, :cond_0

    const-string p0, "ActivityEmbeddingAnimR"

    const-string p1, "No active ActivityEmbedding animator running but mergeAnimation is trying to cancel one."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :goto_0
    return-void
.end method

.method public final setAnimScaleSetting(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    iput p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 7

    invoke-static {p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->shouldAnimate(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Landroid/os/IBinder;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createAnimator(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/util/List;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_2

    invoke-virtual {p3, p2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/function/Consumer;

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_1
    return p2
.end method
