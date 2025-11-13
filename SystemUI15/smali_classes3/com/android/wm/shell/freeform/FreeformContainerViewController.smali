.class public final Lcom/android/wm/shell/freeform/FreeformContainerViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallBacks:Ljava/util/List;

.field public mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

.field public final mContext:Landroid/content/Context;

.field public mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

.field public final mDisplayFrame:Landroid/graphics/Rect;

.field public mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

.field public final mFullscreenModeRequests:Ljava/util/List;

.field public mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

.field public mHideCallback:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

.field public final mHideContainerViewRunnable:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

.field public mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mNonDecorDisplayFrame:Landroid/graphics/Rect;

.field public mState:I

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpPointF:Landroid/graphics/PointF;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpPointF:Landroid/graphics/PointF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerViewController;I)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideContainerViewRunnable:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final adjustPositionInDisplay(IILandroid/graphics/Rect;)V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, p1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->right:I

    add-int v0, p1, p2

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1

    add-int/2addr p1, p2

    sub-int v0, p1, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    if-le p1, p2, :cond_2

    sub-int v3, p1, p2

    goto :goto_1

    :cond_2
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_3

    sub-int v3, p0, p1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p3, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_5
    return-void
.end method

.method public final closeFullscreenMode(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    const/4 v1, 0x0

    const-string v2, "FreeformContainer"

    if-nez v0, :cond_0

    const-string p0, "[ViewController] close failed: mContainerView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ViewController] "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist, close failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ViewController] close FullscreenMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "[ViewController] FullscreenMode Disabled"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->requestTransparentRegion(Landroid/view/View;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final createOrUpdateDismissButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissViewManager;->createOrUpdateWrapper()V

    return-void
.end method

.method public final hideDismissButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "[ViewController] hideDismissButton"

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideCallback:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "[FreeformContainerDismissButtonView] hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;Ljava/lang/Runnable;)V

    iget-object p0, v1, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/DismissView;->hide(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final hideDismissButtonAndDismissIcon(Lcom/android/wm/shell/freeform/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ViewController] hideDismissButtonAndDismissIcon: btn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isEnterDismissButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideDismissButton()V

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isEnterDismissButton()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerViewController;Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissingIconView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object p1, p1, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget-object v1, p1, Lcom/android/wm/shell/common/DismissView;->mDismissArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object v1, v1, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget-object v3, v1, Lcom/android/wm/shell/common/DismissView;->mDismissArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float v8, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    int-to-float v9, p0

    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f333333    # 0.7f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance p3, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p3, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p3, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    sget-object p0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {p3, p0, p1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {p3, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p3, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {p3, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final hideWindow()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "[ViewController] Hide Window"

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    iget-boolean v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    if-eqz v2, :cond_1

    iput-boolean v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    :cond_1
    const-string v0, "fullscreen_mode_request_remove_target"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideCallback:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "[FreeformContainerDismissButtonView] hide()"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    if-eqz v1, :cond_3

    iput-boolean v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    new-instance v3, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/DismissView;->hide(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideContainerViewRunnable:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final isDismissButtonShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonShowing:Z

    return p0
.end method

.method public final isEnterDismissButton()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean p0, p0, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    return p0
.end method

.method public final isPointerView()Z
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyItemRemoved(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ViewController] onItemRemoved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreeformContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerCallback;->onItemRemoved(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final openFullscreenMode(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    const/4 v1, 0x0

    const-string v2, "FreeformContainer"

    if-nez v0, :cond_0

    const-string p0, "[ViewController] open failed: mContainerView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ViewController] "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already opened"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "[ViewController] open FullscreenMode: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "[ViewController] FullscreenMode Enabled"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->requestTransparentRegion(Landroid/view/View;)V

    :cond_2
    return v0
.end method

.method public final setFocusable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ViewController] setFocusable: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final updateContainerState(IZZ)V
    .locals 10

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_1
    const-string v0, "CONTAINER_STATE_FOLDER"

    goto :goto_0

    :cond_2
    const-string v0, "CONTAINER_STATE_POINTER"

    goto :goto_0

    :cond_3
    const-string v0, "CONTAINER_STATE_UNDEFINED"

    :goto_0
    const-string v2, "[ViewController] updateContainerState: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FreeformContainer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPopupWindow:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewPopupWindow;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "state_update"

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->dismissMultiInstancePreviewPopup(Ljava/lang/String;)V

    :cond_4
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    const/4 v0, 0x2

    const-wide/16 v3, 0x11b

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_10

    if-eq p1, v1, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result p3

    sub-int/2addr p3, v0

    move v0, v6

    :goto_1
    if-ltz p3, :cond_7

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/freeform/FreeformContainerView;->isTailIconViewOrder(I)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    add-int/2addr v0, v1

    iget-object v7, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setX(F)V

    iget-object v8, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getY()F

    move-result v8

    iget v9, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    mul-int/2addr v9, v0

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setY(F)V

    iget-object v8, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    const v9, 0x7f0101ab

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->calculateFolderSize()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p3, p3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iget v0, p3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    iget p3, p3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    iget-object v7, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpPointF:Landroid/graphics/PointF;

    iget-object v8, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getX()F

    move-result v8

    iget v9, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    sub-int/2addr v0, v9

    int-to-float v0, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    sub-float/2addr v8, v0

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getY()F

    move-result v0

    iget p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    sub-int/2addr p3, p1

    int-to-float p1, p3

    div-float/2addr p1, v9

    sub-float/2addr v0, p1

    invoke-virtual {v7, v8, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpPointF:Landroid/graphics/PointF;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v7, p3, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget p3, p3, Landroid/graphics/PointF;->y:F

    float-to-int p3, p3

    iget-object v8, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iget v9, v8, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    add-int/2addr v9, v7

    iget v8, v8, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    add-int/2addr v8, p3

    invoke-virtual {v0, v7, p3, v9, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v7, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingLeft:I

    neg-int v7, v7

    iget v8, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingRight:I

    neg-int v8, v8

    invoke-virtual {p3, v7, v8, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->adjustPositionInDisplay(IILandroid/graphics/Rect;)V

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->setX(F)V

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->setY(F)V

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getZ()F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->setZ(F)V

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p3, v7}, Landroid/widget/FrameLayout;->setX(F)V

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setY(F)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[FolderView] setFolderPosition: x="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", view="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getTrayBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :goto_3
    float-to-int v0, v0

    goto :goto_4

    :cond_8
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    goto :goto_3

    :goto_4
    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getY()F

    move-result v2

    sub-float/2addr p3, v2

    iget v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconItemTopMarginInFolder:I

    int-to-float v2, v2

    add-float/2addr p3, v2

    float-to-int p3, p3

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    int-to-float p3, p3

    invoke-direct {v2, v5, v0, v5, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    sget-object p3, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance p3, Lcom/android/wm/shell/freeform/FreeformContainerView$7;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView$7;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    invoke-virtual {v2, p3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateIconsPosition()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->animateBackgroundDim(Z)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->setFocusable(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    const-string v0, "fullscreen_mode_request_folder"

    invoke-virtual {p3, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_9

    goto/16 :goto_7

    :cond_9
    iget-boolean p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    if-eqz p3, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->calculateFolderSize()V

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-boolean v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    invoke-virtual {p1, v6}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    iget p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconCount:I

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {v2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v2

    if-ge p3, v2, :cond_b

    invoke-virtual {p1, v6}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    :cond_b
    if-eqz p2, :cond_e

    iput-boolean v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpandAnimating:Z

    invoke-virtual {p1, v6}, Lcom/android/internal/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    invoke-virtual {p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result p2

    move p3, v6

    :goto_5
    if-ge p3, p2, :cond_d

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$SingleInstanceItemViewHolder;

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_d
    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    const v1, 0x7f0101af

    invoke-static {p3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    iget-object p3, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOpenFolderRunnable:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    const-wide/16 v1, 0x21

    invoke-virtual {p2, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    if-eqz p2, :cond_f

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0112

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    iput-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    :cond_f
    :goto_7
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/16 p2, 0x40

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/RecyclerView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto/16 :goto_a

    :cond_10
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p1, v6}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewDescription()V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->collapse(Z)V

    if-eqz p3, :cond_11

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p1, v6}, Lcom/android/wm/shell/freeform/FreeformContainerView;->animateBackgroundDim(Z)V

    :cond_11
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->setFocusable(Z)V

    if-eqz p2, :cond_14

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->getIconViewListCount()I

    move-result p1

    if-lt p1, v0, :cond_13

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getTrayBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateIconsPosition()V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_12

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    :goto_8
    float-to-int p3, p3

    goto :goto_9

    :cond_12
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    goto :goto_8

    :goto_9
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    iget v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconItemTopMarginInFolder:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p3, p3

    int-to-float p2, p2

    invoke-direct {v0, p3, v5, p2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    sget-object p2, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerView$6;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView$6;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    invoke-virtual {v0, p2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownEffectRequested:Z

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    const p3, 0x7f0101b0

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    new-instance p3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$5;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$5;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a

    :cond_13
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    new-instance p3, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    :goto_a
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updateTouchableRegion()V

    return-void
.end method

.method public final updateDisplayFrame(Z)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getOverrideStableInsets(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerPosition:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpl-float v5, v2, v3

    if-ltz v5, :cond_0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    const-string v3, "[ContainerView] scalePointerPosition, new position=("

    const-string v5, ","

    const-string v6, ") scale=("

    invoke-static {v3, v2, v5, v0, v6}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FreeformContainer"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v0, v4}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    :cond_0
    return-void
.end method
