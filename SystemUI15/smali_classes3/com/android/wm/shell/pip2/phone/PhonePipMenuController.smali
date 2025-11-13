.class public final Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/pip/PipMenuController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMediaActionListener:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;

.field public mMediaActions:Ljava/util/List;

.field public final mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

.field public mMenuState:I

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipMediaController;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;-><init>(Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iput-object p6, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p7, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    return-void
.end method


# virtual methods
.method public final attach(Landroid/view/SurfaceControl;)V
    .locals 8

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mLeash:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    :cond_1
    :goto_0
    new-instance p1, Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iget-object v3, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/pip2/phone/PipMenuView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/pip/PipUiEventLogger;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$2;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$2;-><init>(Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/android/wm/shell/common/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/common/SystemWindows;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMenuState:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->updateMenuActions$1$1()V

    return-void
.end method

.method public final checkPipMenuState$1()Z
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "%s: Not going to move PiP, either menu or its parent is not created."

    const-string p0, "PhonePipMenuController"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x6b16de4b37573600L    # 7.341952577812417E207

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final detach()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->hideMenu()V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v2, v2, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public final getEstimatedMinMenuSize()Landroid/util/Size;
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ccf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070cd8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070cce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cd9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v2

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final hideMenu()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mDidLastShowMenuResize:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;ZZI)V

    :cond_0
    return-void
.end method

.method public final isMenuVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMenuState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->checkPipMenuState$1()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    return-void
.end method

.method public final resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->checkPipMenuState$1()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    return-void
.end method

.method public final showMenuInternal(ILandroid/graphics/Rect;ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->checkPipMenuState$1()Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8, v8}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iput-boolean v3, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowMenuTimeout:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mDidLastShowMenuResize:Z

    iget v9, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuState:I

    if-eq v9, v1, :cond_6

    if-eqz v4, :cond_2

    if-eq v9, v7, :cond_1

    if-ne v1, v7, :cond_2

    :cond_1
    move v9, v7

    goto :goto_0

    :cond_2
    move v9, v6

    :goto_0
    xor-int/2addr v9, v7

    iput-boolean v9, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowTouches:Z

    iget-object v9, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v10, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    check-cast v9, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v9, v10}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v9, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    iget-object v9, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    new-array v13, v5, [F

    aput v11, v13, v6

    aput v12, v13, v7

    invoke-static {v9, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v11, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuBgUpdateListener:Lcom/android/wm/shell/pip2/phone/PipMenuView$1;

    invoke-virtual {v9, v11}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v11, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v13

    new-array v14, v5, [F

    aput v13, v14, v6

    aput v12, v14, v7

    invoke-static {v11, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v13, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v14

    new-array v15, v5, [F

    aput v14, v15, v6

    aput v12, v15, v7

    invoke-static {v13, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    if-ne v1, v7, :cond_4

    iget-object v12, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v9, v13, v6

    aput-object v11, v13, v7

    aput-object v10, v13, v5

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    iget-object v5, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v9, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v9, 0x7d

    invoke-virtual {v5, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v9, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;

    invoke-direct {v9, v0, v1, v3}, Lcom/android/wm/shell/pip2/phone/PipMenuView$3;-><init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;IZ)V

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p5, :cond_5

    new-instance v3, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v7}, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v1, v4, v8}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->updateActionViews(ILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->repostDelayedHide(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final updateMenuActions$1$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMediaActions:Ljava/util/List;

    iget-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mCloseAction:Landroid/app/RemoteAction;

    iget p0, v0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuState:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->updateActionViews(ILandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public final updateMenuBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/android/wm/shell/common/pip/PipMenuController;->getPipMenuLayoutParams(Landroid/content/Context;II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v1, v1, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControlViewHost;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
