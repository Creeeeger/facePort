.class public final Lcom/android/wm/shell/transition/CounterRotatorHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mLastDisplayBounds:Landroid/graphics/Rect;

.field public mLastRotationDelta:I

.field public final mRotatorMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final cleanUp(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/shared/CounterRotator;

    iget-object v1, v1, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    return-void
.end method

.method public final handleClosingChanges(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v3

    invoke-static {v2, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    iput v9, v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    iget-object v3, v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    move v14, v2

    :goto_0
    if-ltz v14, :cond_7

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4000

    invoke-virtual {v15, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    move/from16 v17, v9

    goto :goto_5

    :cond_1
    :goto_2
    invoke-static {v15, v1}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/shared/CounterRotator;

    if-nez v2, :cond_5

    new-instance v6, Lcom/android/wm/shell/shared/CounterRotator;

    invoke-direct {v6}, Lcom/android/wm/shell/shared/CounterRotator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    int-to-float v5, v10

    int-to-float v3, v11

    move-object v2, v6

    move/from16 v16, v3

    move-object/from16 v3, p2

    move/from16 v17, v5

    move v5, v9

    move-object v1, v6

    move/from16 v6, v17

    move/from16 v17, v9

    move-object v9, v7

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/shared/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    iget-object v2, v1, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    sub-int v3, v13, v14

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    :goto_3
    invoke-virtual {v8, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    iget-object v2, v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mRotatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto :goto_4

    :cond_5
    move/from16 v17, v9

    :goto_4
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, v2, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v8, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_5
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v1, p1

    move/from16 v9, v17

    goto/16 :goto_0

    :cond_7
    return-void
.end method
