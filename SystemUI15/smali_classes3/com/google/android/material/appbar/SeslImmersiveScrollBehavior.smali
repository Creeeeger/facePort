.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isRoundedCornerHide:Z

.field public mAnimationController:Landroid/view/WindowInsetsAnimationController;

.field public final mAnimationHandler:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$1;

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public mBottomArea:Landroid/view/View;

.field public mCalledHideShowOnLayoutChild:Z

.field public mCanImmersiveScroll:Z

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public mContentView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public mCurOffset:F

.field public mDecorView:Landroid/view/View;

.field public mDecorViewInset:Landroid/view/WindowInsets;

.field public mIsMultiWindow:Z

.field public final mIsSetAutoRestore:Z

.field public mNavigationBarBg:Landroid/view/View;

.field public mNavigationBarHeight:I

.field public mNeedRestoreAnim:Z

.field public mOffsetAnimator:Landroid/animation/ValueAnimator;

.field public final mOffsetChangedListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;

.field public mOnInsetsChangedListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;

.field public mPrevOffset:I

.field public mPrevOrientation:I

.field public mShownAtDown:Z

.field public mStatusBarBg:Landroid/view/View;

.field public mStatusBarHeight:I

.field public mTargetView:Landroid/view/View;

.field public mToolIsMouse:Z

.field public final mWindowAnimationCallback:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;

.field public final mWindowInsetsAnimationControlListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;

.field public mWindowInsetsController:Landroid/view/WindowInsetsController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCurOffset:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOnInsetsChangedListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;

    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNeedRestoreAnim:Z

    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsSetAutoRestore:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isRoundedCornerHide:Z

    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCalledHideShowOnLayoutChild:Z

    new-instance v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$1;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationHandler:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$1;

    new-instance v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetChangedListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;

    new-instance v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsAnimationControlListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;

    new-instance v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;I)V

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowAnimationCallback:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateSystemBarsHeight()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateAppBarHeightProportion()V

    return-void
.end method

.method public static isHideCameraCutout(Landroid/view/WindowInsets;)Z
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final canImmersiveScroll()Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isDexEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->isMouse:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->prepareImmersiveScroll(ZZ)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    :goto_0
    const-string v2, "SeslImmersiveScrollBehavior"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "Disable ImmersiveScroll due to accessibility enabled"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateOrientationState()Z

    invoke-virtual {p0, v1, v3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->prepareImmersiveScroll(ZZ)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v4, v0, Lcom/google/android/material/appbar/AppBarLayout;->mIsActivatedImmersiveScroll:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->prepareImmersiveScroll(ZZ)V

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "config_navBarCanMove"

    const-string v5, "bool"

    const-string v6, "android"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ERROR, e : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateOrientationState()Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_6

    invoke-static {v2}, Lcom/google/android/material/internal/SeslContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/internal/SeslContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    iget-boolean v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsMultiWindow:Z

    if-eq v4, v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->forceRestoreWindowInset(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->cancelWindowInsetsAnimationController()V

    :cond_5
    iput-boolean v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsMultiWindow:Z

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    return v1

    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->mIsActivatedByUser:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->cancelWindowInsetsAnimationController()V

    :cond_8
    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->prepareImmersiveScroll(ZZ)V

    :cond_9
    return v1
.end method

.method public final cancelWindowInsetsAnimationController()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mShownAtDown:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mShownAtDown:Z

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    iput-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mShownAtDown:Z

    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mToolIsMouse:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mToolIsMouse:Z

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    iput-boolean p1, v1, Lcom/google/android/material/appbar/AppBarLayout;->isMouse:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->dispatchImmersiveScrollEnabled()Z

    :cond_1
    return v0
.end method

.method public final dispatchImmersiveScrollEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->mIsDetachedState:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->canImmersiveScroll()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->setupDecorsFitSystemWindowState(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateAppBarHeightProportion()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateSystemBarsHeight()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final findSystemBarsBackground()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$4;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateSystemBarsHeight()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final forceRestoreWindowInset(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isAppBarHide()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->show(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SeslImmersiveScrollBehavior"

    const-string p1, "forceRestoreWindowInset: mWindowInsetsController.show failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final isAppBarHide()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDexEnabled()Z
    .locals 9

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget-object v1, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "hidden_semDesktopModeEnabled"

    invoke-static {v1, v3, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, " IllegalAccessException"

    const-string v3, " IllegalArgumentException"

    const-string v4, " InvocationTargetException"

    const-string v5, "SeslBaseReflector"

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v7, v4, v5, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v7, v3, v5, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v7, v2, v5, p0}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_1
    :goto_0
    move-object p0, v6

    :goto_1
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    :goto_2
    sget-object v1, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    const-string v7, "hidden_SEM_DESKTOP_MODE_ENABLED"

    new-array v8, v0, [Ljava/lang/Class;

    invoke-static {v1, v7, v8}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3, v4, v5, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_3

    :catch_4
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v4, v3, v5, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_3

    :catch_5
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v4, v2, v5, v3}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_3
    :goto_3
    instance-of v1, v6, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    if-ne p0, v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public final isNavigationBarBottomPosition()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public final layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    iget-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOnInsetsChangedListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;

    if-nez p3, :cond_0

    new-instance p3, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;

    invoke-direct {p3, p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOnInsetsChangedListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, p3}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p3, :cond_1

    if-ne p2, p3, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string p3, "initImmViews mNeedInit=false"

    const-string v0, "SeslImmersiveScrollBehavior"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetChangedListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->mIsActivatedByUser:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isDexEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->mIsActivatedImmersiveScroll:Z

    iput-boolean p3, v0, Lcom/google/android/material/appbar/AppBarLayout;->mIsActivatedByUser:Z

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getImmBehavior()Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isAppBarHide()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->restoreTopAndBottom(Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowAnimationCallback:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->findSystemBarsBackground()V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->dispatchImmersiveScrollEnabled()Z

    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_5

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    goto :goto_1

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const p2, 0x7f0a01a2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    :cond_7
    :goto_2
    return-void
.end method

.method public final onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mToolIsMouse:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mToolIsMouse:Z

    iput-boolean v0, p2, Lcom/google/android/material/appbar/AppBarLayout;->isMouse:Z

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z

    move-result p0

    return p0
.end method

.method public final onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->dispatchImmersiveScrollEnabled()Z

    invoke-super/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public final onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    aput p4, p6, p0

    const/4 p0, 0x1

    aput p5, p6, p0

    return-void

    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public final bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    invoke-super/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public final onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 8

    iput-object p4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->dispatchImmersiveScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-static {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isHideCameraCutout(Landroid/view/WindowInsets;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->hide(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "SeslImmersiveScrollBehavior"

    const-string/jumbo v1, "startAnimationControlRequest: mWindowInsetsController.hide failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    iget-object v6, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsAnimationControlListener:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;

    invoke-interface/range {v1 .. v7}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    :cond_4
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final prepareImmersiveScroll(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->forceRestoreWindowInset(Z)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->setupDecorsFitSystemWindowState(Z)V

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->mIsCanScroll:Z

    if-eq p1, p2, :cond_0

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->mIsCanScroll:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final restoreTopAndBottom(Z)V
    .locals 4

    const-string v0, " Restore top and bottom areas [Animate] "

    const-string v1, "SeslImmersiveScrollBehavior"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNeedRestoreAnim:Z

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationHandler:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$1;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isAppBarHide()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/google/android/material/appbar/AppBarLayout;->mIsActivatedImmersiveScroll:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method public final setupDecorsFitSystemWindowState(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/material/internal/SeslContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/internal/SeslContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isHideCameraCutout(Landroid/view/WindowInsets;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iput v1, p1, Lcom/google/android/material/appbar/AppBarLayout;->mImmersiveTopInset:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    iput v2, p1, Lcom/google/android/material/appbar/AppBarLayout;->mImmersiveTopInset:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz p1, :cond_7

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->top:I

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    if-eq p1, v0, :cond_7

    iput p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->mImmersiveTopInset:I

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iput v1, p1, Lcom/google/android/material/appbar/AppBarLayout;->mImmersiveTopInset:I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isNavigationBarBottomPosition()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p1, Lcom/google/android/material/appbar/AppBarLayout;->mCurrentOrientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->top:I

    if-eqz p1, :cond_7

    :try_start_0
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "SeslImmersiveScrollBehavior"

    const-string/jumbo p1, "setupDecorsFitSystemWindowState: mWindowInsetsController.hide failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public final updateAppBarHeightProportion()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/appbar/SeslAppBarHelper;->Companion:Lcom/google/android/material/appbar/SeslAppBarHelper$Companion;

    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/material/appbar/SeslAppBarHelper$Companion;->getAppBarProPortion(Landroid/content/Context;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->mUseCustomHeight:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->mHeightProportion:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->mHeightProportion:F

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateInternalHeight()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->mUseCustomHeight:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->mHeightProportion:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->mHeightProportion:F

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateInternalHeight()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateOrientationState()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->mCurrentOrientation:I

    iget v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mPrevOrientation:I

    const/4 v3, 0x1

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mPrevOrientation:I

    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->forceRestoreWindowInset(Z)V

    iput-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCalledHideShowOnLayoutChild:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    const-string p0, "SeslImmersiveScrollBehavior"

    const-string v0, "ERROR, e : AppbarLayout Configuration is wrong"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public final updateSystemBarsHeight()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    :cond_1
    const-string v1, "navigation_bar_height"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    :cond_3
    return-void
.end method
