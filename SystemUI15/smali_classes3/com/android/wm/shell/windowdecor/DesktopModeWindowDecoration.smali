.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;
.super Lcom/android/wm/shell/windowdecor/WindowDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAppIconBitmap:Landroid/graphics/Bitmap;

.field public mAppName:Ljava/lang/CharSequence;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCurrentViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

.field public mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

.field public mExclusionRegionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;

.field public mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

.field public final mHandler:Landroid/os/Handler;

.field public mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

.field public mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

.field public mOnCaptionGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field public mOnCaptionLongClickListener:Landroid/view/View$OnLongClickListener;

.field public mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

.field public final mPositionInParent:Landroid/graphics/Point;

.field public final mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

.field public mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

.field public mResizeVeilBitmap:Landroid/graphics/Bitmap;

.field public final mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

.field public final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

.field public mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 15

    new-instance v10, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v11, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v12, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {v13, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$1;

    invoke-direct {v14}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$1;-><init>()V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v14}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/view/SurfaceControl;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/window/WindowContainerTransaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V

    const/4 v0, 0x0

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCurrentViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;-><init>()V

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;-><init>()V

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    move-object/from16 v0, p6

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p7

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    move-object/from16 v0, p8

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object/from16 v0, p9

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    return-void
.end method

.method public static updateRelayoutParams(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;ZZ)V
    .locals 6

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    const v2, 0x7f0d00de

    const v3, 0x7f0d00dd

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v1, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-ne v0, v3, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->reset()V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    const v0, 0x7f0702ff

    goto :goto_3

    :cond_3
    const v0, 0x7f0702fe

    :goto_3
    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    iget v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    if-ne v0, v3, :cond_4

    const v4, 0x7f070300

    :cond_4
    iput v4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    if-eqz v2, :cond_6

    invoke-static {p2}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    :cond_5
    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;-><init>()V

    const v1, 0x7f0702fb

    iput v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mWidthResId:I

    sget-object v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;->START:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mAlignment:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;-><init>()V

    const v1, 0x7f0702fa

    iput v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mWidthResId:I

    sget-object v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;->END:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mAlignment:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    iget v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    :cond_7
    :goto_4
    iget-boolean v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    sget-boolean v1, Lcom/android/wm/shell/shared/DesktopModeStatus;->USE_WINDOW_SHADOWS:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/wm/shell/shared/DesktopModeStatus;->USE_WINDOW_SHADOWS_FOCUSED_WINDOW:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    :cond_8
    if-eqz v0, :cond_9

    const v0, 0x7f070415

    goto :goto_5

    :cond_9
    const v0, 0x7f070416

    :goto_5
    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    :cond_a
    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mSetTaskPositionAndCrop:Z

    new-instance p3, Landroid/content/res/Configuration;

    invoke-direct {p3}, Landroid/content/res/Configuration;-><init>()V

    invoke-static {}, Lcom/android/window/flags/Flags;->enableAppHeaderWithTaskDensity()Z

    invoke-static {}, Lcom/android/wm/shell/shared/DesktopModeStatus;->useDesktopOverrideDensity()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_6

    :cond_b
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p3, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :goto_6
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mWindowDecorConfig:Landroid/content/res/Configuration;

    sget-boolean p2, Lcom/android/wm/shell/shared/DesktopModeStatus;->USE_ROUNDED_CORNERS:Z

    if-eqz p2, :cond_c

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    :cond_c
    return-void
.end method


# virtual methods
.method public final calculateMaximizeMenuPosition()Landroid/graphics/PointF;
    .locals 9

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget v0, v2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const v3, 0x7f0702ff

    goto :goto_0

    :cond_1
    const v3, 0x7f0702fe

    :goto_0
    invoke-static {v4, v3}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v4, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const v5, 0x7f0a06b4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    const v6, 0x7f07031e

    invoke-static {v1, v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v6

    const v7, 0x7f07031c

    invoke-static {v1, v7}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x0

    aget v5, v5, v8

    add-int/2addr v7, v5

    int-to-float v5, v7

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    sub-int v4, v6, v4

    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float/2addr v5, v4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    add-int/2addr p0, v3

    int-to-float p0, p0

    int-to-float v3, v6

    add-float/2addr v3, v5

    int-to-float v4, v1

    add-float/2addr v4, p0

    int-to-float v7, v0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2

    sub-int/2addr v0, v6

    int-to-float v5, v0

    :cond_2
    int-to-float v0, v2

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    sub-int/2addr v2, v1

    int-to-float p0, v2

    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final checkTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const v1, 0x7f0a0353

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkTouchEventInFocusedCaptionHandle(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->checkMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenuIfNeeded(Landroid/view/MotionEvent;)V

    :cond_3
    return-void
.end method

.method public final checkTouchEventInCaption(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionX:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final checkTouchEventInFocusedCaptionHandle(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    instance-of v0, v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkTouchEventInCaption(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mExclusionRegionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopExclusionRegions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    iget-object v2, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeExclusionRegion$1;

    invoke-direct {v3, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$removeExclusionRegion$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_3
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->isVisible:Z

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->viewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost;->release()V

    :cond_5
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->viewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->surfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->backgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_6
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->backgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_7

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_7
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSurface:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_8

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_8
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->onDisplaysChangedListener:Lcom/android/wm/shell/windowdecor/ResizeVeil$onDisplaysChangedListener$1;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->displayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCurrentViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCurrentViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    :cond_9
    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->close()V

    return-void
.end method

.method public final closeHandleMenu()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->onHandleMenuClosed()V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/wm/shell/windowdecor/HandleMenu$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/wm/shell/windowdecor/HandleMenu$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/HandleMenu;)V

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const-wide/16 v5, 0x32

    const-wide/16 v7, 0x14

    if-eq v4, v1, :cond_2

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v9, 0x6

    if-ne v4, v9, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuAnimator:Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v11, 0x0

    new-array v12, v1, [F

    aput v11, v12, v0

    invoke-static {v9, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    aput v11, v1, v0

    invoke-static {v9, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animateAppInfoPillFadeOut()V

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPillClose()V

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPillClose()V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->runAnimations(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuAnimator:Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v11, v1, [F

    const v12, 0x3f19999a    # 0.6f

    aput v12, v11, v0

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v1, [F

    const v12, 0x3d4ccccd    # 0.05f

    aput v12, v11, v0

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->captionHeight:F

    neg-float v4, v4

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v4, v9

    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v10, v2, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v1, [F

    aput v4, v1, v0

    invoke-static {v10, v11, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animateAppInfoPillFadeOut()V

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPillClose()V

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPillClose()V

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->runAnimations(Ljava/lang/Runnable;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    return-void
.end method

.method public final closeHandleMenuIfNeeded(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const v1, 0x7f0a087a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/window/flags/Flags;->enableAdditionalWindowsAboveStatusBar()Z

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;->getView()Landroid/view/View;

    move-result-object v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuPosition:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    invoke-static {v2, v3, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->pointInView(Landroid/view/View;FF)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    :cond_3
    return-void
.end method

.method public final closeMaximizeMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isMaximizeMenuActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->openMenuAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->releaseView()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    return-void
.end method

.method public final closeMaximizeMenuIfNeeded(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isMaximizeMenuActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuPosition:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v4, v1

    if-gtz v5, :cond_3

    iget v5, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_3

    iget v1, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v1, p1

    if-gtz v2, :cond_3

    iget v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuHeight:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    :cond_4
    return-void
.end method

.method public final createMaximizeMenu()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-instance v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->calculateMaximizeMenuPosition()Landroid/graphics/PointF;

    move-result-object v13

    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    move-object v4, v15

    invoke-direct/range {v4 .. v14}, Lcom/android/wm/shell/windowdecor/MaximizeMenu;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnGenericMotionListener;Landroid/view/View$OnTouchListener;Landroid/content/Context;Landroid/graphics/PointF;Ljava/util/function/Supplier;)V

    iput-object v15, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    iget-object v0, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->transactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    iget-object v5, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v6, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->rootTdaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v6, v5, v4}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    const-string v5, "Maximize Menu"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->leash:Landroid/view/SurfaceControl;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    iget v7, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuHeight:I

    const/4 v8, 0x2

    iget v6, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuWidth:I

    const/16 v9, 0x8

    const/4 v10, -0x2

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v5, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Maximize Menu for Task="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    new-instance v5, Landroid/view/WindowlessWindowManager;

    iget-object v6, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v7, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->leash:Landroid/view/SurfaceControl;

    const/4 v8, 0x0

    if-nez v7, :cond_1

    move-object v7, v8

    :cond_1
    invoke-direct {v5, v6, v7, v8}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    new-instance v6, Landroid/view/SurfaceControlViewHost;

    iget-object v7, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->decorWindowContext:Landroid/content/Context;

    iget-object v9, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v10, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->displayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v10, v9}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object v9

    const-string v10, "MaximizeMenu"

    invoke-direct {v6, v7, v9, v5, v10}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object v6, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->viewHost:Landroid/view/SurfaceControlViewHost;

    new-instance v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iget-object v6, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->decorWindowContext:Landroid/content/Context;

    iget-object v7, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->onClickListener:Landroid/view/View$OnClickListener;

    iget-object v9, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->onTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v10, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->onGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    iget v11, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuHeight:I

    iget v12, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuPadding:I

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v16 .. v22}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;-><init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/view/View$OnGenericMotionListener;)V

    iget-object v6, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->decorThemeUtil:Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;

    invoke-virtual {v7, v6}, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;->getAppTheme(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/windowdecor/common/Theme;

    move-result-object v6

    sget-object v9, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v9, v6

    if-eq v6, v2, :cond_3

    if-ne v6, v3, :cond_2

    iget-object v6, v7, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;->darkColors:Landroidx/compose/material3/ColorScheme;

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_3
    iget-object v6, v7, Lcom/android/wm/shell/windowdecor/common/DecorThemeUtil;->lightColors:Landroidx/compose/material3/ColorScheme;

    :goto_0
    iget-wide v9, v6, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v7

    new-instance v9, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    iget-wide v10, v6, Landroidx/compose/material3/ColorScheme;->onSurface:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v10

    new-instance v11, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;

    iget-wide v12, v6, Landroidx/compose/material3/ColorScheme;->primary:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v14

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/16 v8, 0x1f

    invoke-static {v8, v2, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v14, v1, v2}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->createMaximizeButtonDrawable(IILjava/lang/Integer;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v3, 0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v3, 0x101009c

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v3, 0x10100a1

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v3, 0x1010367

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    move-object v3, v9

    iget-wide v8, v6, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v14

    move-object/from16 v25, v3

    move-object/from16 v24, v4

    iget-wide v3, v6, Landroidx/compose/material3/ColorScheme;->surfaceContainerLow:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v5, v14, v3, v4}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->createMaximizeButtonDrawable(IILjava/lang/Integer;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-direct {v11, v2}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;-><init>(Landroid/graphics/drawable/StateListDrawable;)V

    new-instance v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v17

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v6, 0x66

    invoke-static {v6, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v19

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v20

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v21

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v6, 0x1f

    invoke-static {v6, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v23

    move-object/from16 v16, v1

    move/from16 v22, v7

    invoke-direct/range {v16 .. v23}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;-><init>(IIIIIII)V

    move-object/from16 v2, v25

    invoke-direct {v2, v7, v10, v11, v1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;-><init>(IILcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$SnapOptions;)V

    iput-object v2, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    iget-object v1, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :cond_4
    iget v2, v4, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeButton:Landroid/widget/Button;

    iget-object v4, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    :cond_5
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->maximizeOption:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle$MaximizeOption;->drawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeText:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    :cond_6
    iget v2, v4, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->textColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->snapWindowText:Landroid/widget/TextView;

    iget-object v4, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->style:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    :cond_7
    iget v2, v4, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$MenuStyle;->textColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;->NONE:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;

    invoke-virtual {v5, v1}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->updateSplitSnapSelection(Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$SnapToHalfSelection;)V

    iget-object v4, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->viewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v4, :cond_8

    const/4 v4, 0x0

    :cond_8
    iget-object v1, v5, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->rootView:Landroid/view/View;

    move-object/from16 v2, v24

    invoke-virtual {v4, v1, v2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v5, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    iget-object v4, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->leash:Landroid/view/SurfaceControl;

    if-nez v4, :cond_9

    const/4 v4, 0x0

    :cond_9
    const v1, 0x11170

    invoke-virtual {v0, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->leash:Landroid/view/SurfaceControl;

    if-nez v4, :cond_a

    const/4 v4, 0x0

    :cond_a
    iget-object v2, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuPosition:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->leash:Landroid/view/SurfaceControl;

    if-nez v4, :cond_b

    const/4 v4, 0x0

    :cond_b
    iget v2, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->cornerRadius:F

    invoke-virtual {v1, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v4, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->leash:Landroid/view/SurfaceControl;

    if-nez v4, :cond_c

    const/4 v4, 0x0

    :cond_c
    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v4, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->leash:Landroid/view/SurfaceControl;

    if-nez v4, :cond_d

    const/4 v4, 0x0

    :cond_d
    iget-object v2, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->viewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    :cond_e
    iget-object v3, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->transactionSupplier:Ljava/util/function/Supplier;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Ljava/util/function/Supplier;)V

    iput-object v1, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    new-instance v1, Lcom/android/wm/shell/windowdecor/MaximizeMenu$createMaximizeMenu$2;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$createMaximizeMenu$2;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object v0, v15, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->maximizeMenuView:Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeButton:Landroid/widget/Button;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/Button;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->maximizeText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->openMenuAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x7

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->rootView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v8, 0x0

    aput-object v4, v2, v8

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v8, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$2$1;

    invoke-direct {v8, v4, v0}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$2$1;-><init>(Landroid/animation/ValueAnimator;Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v8, 0x1

    aput-object v4, v2, v8

    new-array v4, v3, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v8, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$3$1;

    invoke-direct {v8, v4, v0}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$3$1;-><init>(Landroid/animation/ValueAnimator;Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v4, v2, v3

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->rootView:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v9, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->menuHeight:I

    int-to-float v9, v9

    const v10, -0x41b33334    # -0.19999999f

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    new-array v11, v3, [F

    const/4 v3, 0x0

    aput v9, v11, v3

    const/4 v3, 0x1

    aput v10, v11, v3

    invoke-static {v4, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xff

    filled-new-array {v4}, [I

    move-result-object v4

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v6, 0x4

    aput-object v3, v2, v6

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x21

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v8, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;

    invoke-direct {v8, v3, v0}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$6$1;-><init>(Landroid/animation/ValueAnimator;Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v8, 0x5

    aput-object v3, v2, v8

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->rootView:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    aput v10, v9, v11

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const/4 v4, 0x6

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->openMenuAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$$inlined$addListener$default$1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView$animateOpenMenu$$inlined$addListener$default$1;-><init>(Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu$MaximizeMenuView;->openMenuAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_f
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3fa00000    # 1.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getCaptionViewId()I
    .locals 0

    const p0, 0x7f0a0353

    return p0
.end method

.method public final hideResizeVeil()V
    .locals 5

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeil:Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->isVisible:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->backgroundSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->iconSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$1;-><init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/wm/shell/windowdecor/ResizeVeil$hideVeil$1$2;-><init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->veilAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ResizeVeil;->isVisible:Z

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final isHandleMenuActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMaximizeMenuActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadAppInfoIfNeeded()V
    .locals 8

    :try_start_0
    const-string v0, "DesktopModeWindowDecoration#loadAppInfoIfNeeded"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    const-string p0, "DesktopModeWindowDecoration"

    const-string v0, "Top activity info not found in task"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/icons/IconProvider;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const v6, 0x7f0702f8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v6, Lcom/android/launcher3/icons/BaseIconFactory;

    invoke-direct {v6, v3, v5, v4}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const v7, 0x7f070322

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    new-instance v7, Lcom/android/launcher3/icons/BaseIconFactory;

    invoke-direct {v7, v4, v6, v5}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v7, v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResizeVeilBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    neg-int p1, p1

    int-to-float p1, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/PointF;->offset(FF)V

    return-object v0
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V
    .locals 7

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    sget-boolean v0, Lcom/android/wm/shell/shared/DesktopModeStatus;->IS_VEILED_RESIZE_ENABLED:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskDragResizer:Lcom/android/wm/shell/windowdecor/TaskDragResizer;

    invoke-interface {v0}, Lcom/android/wm/shell/windowdecor/TaskDragResizer;->isResizingOrAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    if-nez v6, :cond_2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    return-void
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V
    .locals 9

    const-string v0, "DesktopModeWindowDecoration#relayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCurrentViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCurrentViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->updateRelayoutParamsAndSurfaces(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object p3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateViewHost(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_5

    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCurrentViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCurrentViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    :cond_2
    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->updateRelayoutParamsAndSurfaces(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mCurrentViewHostRunnable:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda4;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "We cannot both sync viewhost ondraw and delay viewhost creation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseViews(Landroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    invoke-super {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mPositionInParent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFocused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateExclusionRegion()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mExclusionRegionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-eqz v3, :cond_0

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-eqz v1, :cond_0

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->union(Landroid/graphics/Region;Landroid/graphics/Region;)V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    const v5, 0x7f0702ff

    goto :goto_1

    :cond_1
    const v5, 0x7f0702fe

    :goto_1
    invoke-static {v6, v5}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v1, p0}, Landroid/graphics/Region;->translate(II)V

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopExclusionRegions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateTaskExclusionRegions$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateTaskExclusionRegions$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final updateHoverAndPressStatus(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const v1, 0x7f0a024b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->checkTouchEventInFocusedCaptionHandle(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v1, :cond_2

    if-eq v4, v3, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setHovered(Z)V

    if-eqz v1, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eq v4, v3, :cond_5

    const/4 v1, 0x3

    if-eq v4, v1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/window/flags/Flags;->enableAdditionalWindowsAboveStatusBar()Z

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/HandleMenu;->checkMotionEvent(Landroid/view/MotionEvent;)V

    :cond_6
    return-void
.end method

.method public final updateRelayoutParamsAndSurfaces(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const-string v0, "DesktopModeWindowDecoration#updateRelayoutParamsAndSurfaces"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isHandleMenuActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/HandleMenu;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->updateHandleMenuPillPositions()V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuPosition:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v9, v2, v0}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;->setPosition(Landroid/view/SurfaceControl$Transaction;FF)V

    :cond_0
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->updateRelayoutParams(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;ZZ)V

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    move-object v10, v0

    check-cast v10, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    iget-object v11, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    new-instance v12, Landroid/window/WindowContainerTransaction;

    invoke-direct {v12}, Landroid/window/WindowContainerTransaction;-><init>()V

    const-string v0, "DesktopModeWindowDecoration#relayout-updateViewsAndSurfaces"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-object v6, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    move-object v5, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateViewsAndSurfaces(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/View;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "DesktopModeWindowDecoration#relayout-applyWCT"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v12}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    if-eq v10, v0, :cond_4

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    const v1, 0x7f0d00dd

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v3, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0d00de

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->loadAppInfoIfNeeded()V

    new-instance v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    iget-object v14, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v15, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v2, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    iget-object v3, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppName:Ljava/lang/CharSequence;

    iget-object v4, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mAppIconBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda3;

    invoke-direct {v5, v8}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V

    move-object v12, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v12 .. v20}, Lcom/android/wm/shell/windowdecor/viewholder/AppHeaderViewHolder;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnGenericMotionListener;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected layout resource id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const-string v0, "DesktopModeWindowDecoration#relayout-binding"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeHandleMenu()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    :cond_5
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-eqz v0, :cond_b

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-ne v11, v0, :cond_6

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_9

    :cond_6
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    iput-object v3, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :goto_2
    const-string v0, "DesktopModeWindowDecoration#relayout-DragResizeInputListener"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-object v11, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v12, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v13, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v1, :cond_8

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    :goto_3
    move-object v15, v1

    goto :goto_4

    :cond_8
    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    goto :goto_3

    :goto_4
    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    iget-object v4, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    iget-object v5, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iget-object v6, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v7, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v10, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v10 .. v20}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    iput-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_9
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput v0, v1, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    new-instance v5, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    iget-object v6, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v11, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    new-instance v12, Landroid/util/Size;

    iget-object v6, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-direct {v12, v7, v6}, Landroid/util/Size;-><init>(II)V

    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingEdgeDragResize()Z

    const v6, 0x7f07041a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v6, 0x7f070419

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v6, 0x7f0702f9

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;-><init>(ILandroid/util/Size;III)V

    const/4 v1, 0x1

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->setGeometry(Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;IZ)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->updateExclusionRegion()V

    goto :goto_5

    :cond_b
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->updateExclusionRegion()V

    :cond_c
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    iput-object v3, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :cond_e
    :goto_5
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_12

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-eqz v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->isMaximizeMenuActive()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->closeMaximizeMenu()V

    goto :goto_7

    :cond_10
    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mMaximizeMenu:Lcom/android/wm/shell/windowdecor/MaximizeMenu;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->calculateMaximizeMenuPosition()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuPosition:Landroid/graphics/PointF;

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->leash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_11

    goto :goto_6

    :cond_11
    move-object v3, v1

    :goto_6
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MaximizeMenu;->menuPosition:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v3, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_12
    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
