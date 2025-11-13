.class public final Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;
.super Lcom/android/wm/shell/windowdecor/WindowDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

.field public final mHandler:Landroid/os/Handler;

.field public mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

.field public mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

.field public final mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

.field public final mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    new-instance p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-direct {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    new-instance p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    invoke-direct {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->closeDragResizeListener()V

    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->close()V

    return-void
.end method

.method public final closeDragResizeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    return-void
.end method

.method public final getCaptionViewId()I
    .locals 0

    const p0, 0x7f0a024a

    return p0
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V
    .locals 6

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskDragResizer:Lcom/android/wm/shell/windowdecor/TaskDragResizer;

    invoke-interface {p2}, Lcom/android/wm/shell/windowdecor/TaskDragResizer;->isResizingOrAnimating()Z

    move-result v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    return-void
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v1, :cond_0

    const v1, 0x7f070415

    goto :goto_0

    :cond_0
    const v1, 0x7f070416

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v9, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-eqz v2, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v10, v2

    :goto_1
    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    move-object v11, v2

    check-cast v11, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    iget-object v12, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    new-instance v13, Landroid/window/WindowContainerTransaction;

    invoke-direct {v13}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->reset()V

    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iput-object v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const v3, 0x7f0d007c

    iput v3, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    const v0, 0x7f070414

    iput v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    iget-object v14, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iput v1, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    move/from16 v0, p4

    iput-boolean v0, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    move/from16 v0, p5

    iput-boolean v0, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mSetTaskPositionAndCrop:Z

    iget-object v15, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v13

    move-object v5, v11

    move-object v6, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateViewsAndSurfaces(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/View;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;Z)V

    iget-object v0, v15, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v14, v15}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateViewHost(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    :cond_2
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v13}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eq v11, v0, :cond_4

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0a02a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0717

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a06b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-nez v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->closeDragResizeListener()V

    return-void

    :cond_5
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-ne v12, v0, :cond_6

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->closeDragResizeListener()V

    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-object v11, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v12, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v13, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    iget-object v15, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    iget-object v3, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iget-object v4, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v5, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v10, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v10 .. v20}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :cond_7
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput v0, v1, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    new-instance v3, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    new-instance v4, Landroid/util/Size;

    iget-object v5, v8, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-direct {v4, v6, v5}, Landroid/util/Size;-><init>(II)V

    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingEdgeDragResize()Z

    const v5, 0x7f07041a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f070419

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0702f9

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v7, 0x0

    move-object/from16 p0, v3

    move/from16 p1, v7

    move-object/from16 p2, v4

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;-><init>(ILandroid/util/Size;III)V

    invoke-virtual {v2, v3, v0, v9}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->setGeometry(Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;IZ)Z

    return-void
.end method
