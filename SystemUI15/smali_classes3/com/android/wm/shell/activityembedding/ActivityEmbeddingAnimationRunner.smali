.class public final Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mActiveAnimator:Landroid/animation/Animator;

.field final mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

.field public final mController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    new-instance p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    return-void
.end method

.method public static createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v12, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    if-eqz v6, :cond_0

    invoke-virtual {v2, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    if-eqz v6, :cond_2

    invoke-virtual {v3, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v4, 0x3e8

    move v14, v4

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v15, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1, v0, v6, v10}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;->get(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    cmp-long v4, v7, v15

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    new-instance v15, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-static {v6, v0}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v9

    move-object v4, v15

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/window/TransitionInfo$Root;)V

    if-eqz p1, :cond_5

    add-int/lit8 v4, v14, 0x1

    iput v14, v15, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    move v14, v4

    :cond_5
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v12

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :goto_5
    if-eqz v3, :cond_9

    move-object/from16 v3, p3

    invoke-static {v6, v6, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v5, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {v6, v0}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v8

    invoke-direct {v5, v7, v6, v4, v8}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Root;)V

    if-nez p1, :cond_8

    add-int/lit8 v4, v14, 0x1

    iput v14, v5, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    move v14, v4

    :cond_8
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object/from16 v3, p3

    :cond_a
    :goto_6
    invoke-virtual {v1, v0, v6, v11}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;->get(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    cmp-long v4, v7, v15

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    new-instance v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-static {v6, v0}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v9

    move-object v4, v10

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/window/TransitionInfo$Root;)V

    if-nez p1, :cond_c

    add-int/lit8 v4, v14, 0x1

    iput v14, v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    move v14, v4

    :cond_c
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    return-object v13
.end method

.method public static getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    const v1, 0x7fffffff

    invoke-static {p2, p0, p1, v0, v1}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAnimator(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/util/List;)Landroid/animation/Animator;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/lang/Runnable;",
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;>;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v7

    const/16 v8, 0x3f9

    const/high16 v10, 0x3f800000    # 1.0f

    if-ne v7, v8, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v6, v1

    move-object v1, v7

    move-object v7, v0

    :cond_0
    :goto_1
    const/4 v0, 0x2

    goto/16 :goto_17

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v4

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x6

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TransitionInfo$Change;

    const/16 v13, 0x4000

    invoke-virtual {v11, v13}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    if-nez v8, :cond_2

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v13

    if-ne v13, v12, :cond_2

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    move v8, v5

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_26

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v13

    if-ne v13, v12, :cond_5

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v1, v11}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v13

    invoke-static {v13}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_5

    :cond_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v15

    invoke-static {v15}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v15

    invoke-static {v15}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v5, :cond_10

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v5, :cond_10

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eq v13, v5, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_6

    :cond_10
    :goto_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    :cond_11
    :goto_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    move-object/from16 v16, v7

    if-eqz v15, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-ne v5, v12, :cond_12

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move-object v6, v1

    move-object/from16 v18, v8

    move-object/from16 v17, v13

    move-object/from16 v1, v16

    goto/16 :goto_a

    :cond_13
    invoke-virtual {v8, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v1, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    invoke-static {v12}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    move-object v5, v15

    :goto_8
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    if-eq v5, v15, :cond_15

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_15
    iget-object v12, v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v9, v4

    div-float v4, v10, v7

    move-object/from16 v17, v13

    div-float v13, v10, v9

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v18, v8

    const/4 v0, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v8, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v0, v12, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x50

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v0, 0x1e

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v4, v4, v13, v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iget-object v1, v12, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x205

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v10, v0, v1, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget v0, v12, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v1, v12, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v3, v9, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x205

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, v14, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-direct {v1, v3, v6, v4, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x205

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget v1, v12, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    const/4 v1, 0x2

    new-array v3, v1, [Landroid/view/animation/Animation;

    const/4 v1, 0x0

    aput-object v10, v3, v1

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v15, v5, v2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-static {v15, v6}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v7

    if-eqz v4, :cond_16

    new-instance v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;

    aget-object v9, v3, v1

    invoke-direct {v8, v9, v15, v4, v7}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Root;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_16
    move-object/from16 v1, v16

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Failed to take screenshot for change="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "ActivityEmbeddingAnimR"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    new-instance v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;

    const/4 v8, 0x1

    aget-object v3, v3, v8

    invoke-direct {v4, v3, v5, v7}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x6

    move-object/from16 v3, p3

    move-object v14, v0

    move-object v7, v1

    move-object v1, v6

    move-object/from16 v13, v17

    move-object/from16 v8, v18

    move-object/from16 v0, p0

    goto/16 :goto_7

    :goto_a
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x6

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object v7, v1

    move-object v1, v6

    move-object/from16 v13, v17

    move-object/from16 v8, v18

    goto/16 :goto_7

    :cond_17
    move-object v6, v1

    move-object/from16 v18, v8

    move-object/from16 v1, v16

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    move-object/from16 v5, v18

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    move-object/from16 v18, v5

    goto :goto_b

    :cond_18
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-eqz v7, :cond_1a

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_c

    :cond_19
    const/4 v8, 0x6

    goto :goto_d

    :cond_1a
    :goto_c
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1c

    :goto_d
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    invoke-static {v7}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v7, 0x0

    goto :goto_e

    :cond_1b
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_e
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v7, p0

    move-object v10, v14

    goto/16 :goto_16

    :cond_1c
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v7, p0

    iget-object v3, v7, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v10, v11, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    if-ne v10, v12, :cond_1e

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    if-ne v13, v15, :cond_1e

    iget v10, v11, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Rect;->left:I

    if-ne v10, v12, :cond_1d

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    neg-int v10, v10

    goto :goto_f

    :cond_1d
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    :goto_f
    const/4 v12, 0x0

    goto :goto_11

    :cond_1e
    if-ne v10, v12, :cond_1f

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    neg-int v10, v10

    goto :goto_10

    :cond_1f
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    :goto_10
    move v12, v10

    const/4 v10, 0x0

    :goto_11
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v10

    int-to-float v12, v12

    const/4 v15, 0x0

    invoke-direct {v13, v15, v10, v15, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v10, v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v10, v14

    const-wide/16 v14, 0x205

    invoke-virtual {v13, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v13, v12, v14, v15, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v3, v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v13, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    move-object v9, v13

    :goto_12
    const/4 v3, 0x0

    goto :goto_16

    :cond_20
    move-object/from16 v7, p0

    move-object v10, v14

    iget-object v3, v7, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    if-ne v12, v13, :cond_22

    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    if-ne v14, v15, :cond_22

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v9, Landroid/graphics/Rect;->left:I

    if-ne v12, v13, :cond_21

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    neg-int v12, v12

    goto :goto_13

    :cond_21
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    :goto_13
    const/4 v13, 0x0

    goto :goto_15

    :cond_22
    if-ne v12, v13, :cond_23

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    neg-int v12, v12

    goto :goto_14

    :cond_23
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    :goto_14
    move v13, v12

    const/4 v12, 0x0

    :goto_15
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    int-to-float v12, v12

    int-to-float v13, v13

    const/4 v15, 0x0

    invoke-direct {v14, v12, v15, v13, v15}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v12, v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v12, 0x205

    invoke-virtual {v14, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v14, v15, v8, v12, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v3, v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v14, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    move-object v9, v14

    goto :goto_12

    :goto_16
    new-instance v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    invoke-static {v4, v6}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v12

    invoke-direct {v8, v9, v4, v12}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v5

    move-object v14, v10

    goto/16 :goto_b

    :cond_24
    move-object/from16 v7, p0

    move-object v10, v14

    if-eqz v3, :cond_0

    if-eqz v10, :cond_0

    move-object v14, v10

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setShowBackdrop(Z)V

    goto/16 :goto_1

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There should be at least one changing window to play the change animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    move-object v7, v0

    move-object v6, v1

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v7, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;I)V

    const/4 v0, 0x0

    invoke-static {v6, v0, v1, v2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_1

    :cond_27
    const/4 v0, 0x0

    const/4 v3, 0x1

    iget-object v1, v7, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;I)V

    invoke-static {v6, v3, v4, v2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :goto_17
    new-array v3, v0, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v10

    if-eqz v10, :cond_28

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    invoke-virtual {v2, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_19

    :cond_28
    invoke-static {v8, v6}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v10

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v10

    int-to-float v10, v12

    invoke-virtual {v2, v9, v11, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_19
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v2, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_29

    invoke-virtual {v2, v9}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_18

    :cond_29
    invoke-virtual {v2, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_18

    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    iget-object v9, v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->hasExtension()Z

    move-result v10

    if-nez v10, :cond_2b

    goto :goto_1a

    :cond_2b
    iget-object v10, v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v10

    if-eqz v10, :cond_2c

    iget-object v10, v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_2c

    goto :goto_1a

    :cond_2c
    iget-object v8, v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    invoke-static {v10}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v10

    if-eqz v10, :cond_2d

    new-instance v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;

    move-object/from16 v11, p3

    invoke-direct {v10, v8, v9, v11}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    move-object/from16 v12, p5

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2d
    move-object/from16 v11, p3

    move-object/from16 v12, p5

    invoke-static {v8, v9, v2, v11}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1a

    :cond_2e
    move-object/from16 v11, p3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    iget-object v9, v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    iget-object v8, v8, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    const/4 v10, 0x0

    invoke-static {v6, v9, v8, v10}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I

    move-result v8

    if-eqz v8, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v8, :cond_30

    goto :goto_1b

    :cond_30
    invoke-static {v8}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Color;->red()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Color;->green()F

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Color;->blue()F

    move-result v6

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v12, 0x0

    aput v8, v10, v12

    const/4 v8, 0x1

    aput v9, v10, v8

    const/4 v9, 0x2

    aput v6, v10, v9

    new-instance v6, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v9, "Animation Background"

    invoke-virtual {v6, v9}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v6, "TransitionAnimationHelper.addBackgroundToTransition"

    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    const/high16 v6, -0x80000000

    invoke-virtual {v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    invoke-virtual {v6, v3, v10}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_31
    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    iget-object v6, v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_1c

    :cond_32
    new-instance v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    iget-object v8, v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget v8, v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_33

    iget-object v9, v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v9, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_33
    iget-object v8, v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    iget-object v9, v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1d

    :cond_34
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;

    move-object/from16 v3, p4

    invoke-direct {v2, v7, v1, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
