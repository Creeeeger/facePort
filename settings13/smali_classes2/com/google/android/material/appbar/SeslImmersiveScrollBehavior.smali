.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "SeslImmersiveScrollBehavior.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslImmersiveScrollBehavior"


# instance fields
.field private isRoundedCornerHide:Z

.field private mAnimationController:Landroid/view/WindowInsetsAnimationController;

.field private final mAnimationHandler:Landroid/os/Handler;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mBottomArea:Landroid/view/View;

.field mCalledHideShowOnLayoutChild:Z

.field private mCanImmersiveScroll:Z

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mCurOffset:F

.field private mCustomWindowInsetsAnimation:Landroid/view/WindowInsetsAnimation$Callback;

.field private mDecorView:Landroid/view/View;

.field private mDecorViewInset:Landroid/view/WindowInsets;

.field private mIsMultiWindow:Z

.field private mIsSetAutoRestore:Z

.field private mNavigationBarBg:Landroid/view/View;

.field private mNavigationBarHeight:I

.field private mNeedRestoreAnim:Z

.field private mNeedToCheckBottomViewMargin:Z

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private final mOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private mOnInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

.field private mPrevOffset:I

.field private mPrevOrientation:I

.field private mShownAtDown:Z

.field private mStatusBarBg:Landroid/view/View;

.field private mStatusBarHeight:I

.field private mTargetView:Landroid/view/View;

.field private mToolIsMouse:Z

.field private final mWindowAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

.field private final mWindowInsetsAnimationControlListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private mWindowInsetsController:Landroid/view/WindowInsetsController;

.field private useCustomAnimationCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNeedToCheckBottomViewMargin:Z

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCurOffset:F

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    .line 75
    iput-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOnInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 78
    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->useCustomAnimationCallback:Z

    .line 79
    iput-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCustomWindowInsetsAnimation:Landroid/view/WindowInsetsAnimation$Callback;

    .line 83
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNeedRestoreAnim:Z

    .line 84
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsSetAutoRestore:Z

    .line 88
    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isRoundedCornerHide:Z

    .line 89
    iput-boolean p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCalledHideShowOnLayoutChild:Z

    .line 100
    new-instance p2, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$1;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationHandler:Landroid/os/Handler;

    .line 109
    new-instance p2, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$2;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 795
    new-instance p2, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;

    invoke-direct {p2, p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$5;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsAnimationControlListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 886
    new-instance p2, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$6;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;I)V

    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    .line 95
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateSystemBarsHeight()V

    .line 97
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateAppBarHeightProportion()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->startRestoreAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/view/WindowInsets;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->canImmersiveScroll()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/view/WindowInsets;)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isHideCameraCutout(Landroid/view/WindowInsets;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->findSystemBarsBackground()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCurOffset:F

    return p0
.end method

.method static synthetic access$1602(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCurOffset:F

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/view/WindowInsetsAnimationController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/view/WindowInsetsAnimationController;)Landroid/view/WindowInsetsAnimationController;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->forceHideRoundedCorner(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->useCustomAnimationCallback:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->finishWindowInsetsAnimationController()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsMultiWindow:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isNavigationBarBottomPosition()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isLandscape()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsSetAutoRestore:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->setInsetsAndAlphaToDefault()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->resetWindowInsetsAnimationController()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mPrevOffset:I

    return p0
.end method

.method static synthetic access$3002(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mPrevOffset:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNeedToCheckBottomViewMargin:Z

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method private animateRestoreTopAndBottom(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 6

    .line 943
    iput p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mPrevOffset:I

    .line 944
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 946
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v0

    .line 947
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 958
    iget-object v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_0

    .line 959
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 960
    new-instance v5, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;

    invoke-direct {v5, p0, v2, p1, p2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$7;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;[ILandroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 978
    :cond_0
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 980
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$8;

    invoke-direct {p2, p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$8;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 992
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 993
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 994
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 995
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 996
    iget-boolean p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNeedRestoreAnim:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p3

    neg-int p3, p3

    goto :goto_1

    :cond_1
    float-to-int p3, v1

    :goto_1
    aput p3, p2, v3

    float-to-int p3, v1

    aput p3, p2, v0

    .line 995
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 998
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private canImmersiveScroll()Z
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 276
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isDexEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->useCustomAnimationCallback:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getIsMouse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0, v1, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->prepareImmersiveScroll(ZZ)V

    return v1

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isAccessibilityEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 287
    sget-object v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    const-string v3, "Disable ImmersiveScroll due to accessibility enabled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateOrientationState()Z

    .line 289
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->prepareImmersiveScroll(ZZ)V

    return v1

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->seslIsActivatedImmsersiveScroll()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 308
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->prepareImmersiveScroll(ZZ)V

    .line 317
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->getCurrentNavbarCanMoveState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateOrientationState()Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 323
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_6

    .line 324
    invoke-static {v3}, Lcom/google/android/material/internal/SeslContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_4

    .line 325
    iget-object v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_4

    .line 326
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    .line 327
    iget-object v3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/internal/SeslContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_6

    .line 330
    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    .line 331
    iget-boolean v4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsMultiWindow:Z

    if-eq v4, v3, :cond_5

    .line 332
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->forceRestoreWindowInset(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->cancelWindowInsetsAnimationController()V

    .line 335
    :cond_5
    iput-boolean v3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsMultiWindow:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v1, v0

    :goto_1
    return v1

    .line 310
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->isImmersiveActivatedByUser()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 311
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->cancelWindowInsetsAnimationController()V

    .line 313
    :cond_8
    invoke-direct {p0, v1, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->prepareImmersiveScroll(ZZ)V

    :cond_9
    :goto_2
    return v1
.end method

.method private findSystemBarsBackground()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    .line 566
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$4;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 579
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateSystemBarsHeight()V

    :cond_1
    :goto_0
    return-void
.end method

.method private finishWindowInsetsAnimationController()V
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 736
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 737
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    const v2, 0x1020002

    .line 738
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    :cond_1
    if-nez v1, :cond_3

    .line 741
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz p0, :cond_2

    .line 742
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_2
    return-void

    .line 746
    :cond_3
    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    .line 747
    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 748
    invoke-interface {v1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-ne p0, v0, :cond_4

    const/4 p0, 0x1

    .line 751
    invoke-interface {v1, p0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    goto :goto_0

    :cond_4
    if-ne p0, v2, :cond_5

    const/4 p0, 0x0

    .line 753
    invoke-interface {v1, p0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private forceHideRoundedCorner(I)V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1018
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1021
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isRoundedCornerHide:Z

    if-eq p1, v0, :cond_2

    .line 1022
    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isRoundedCornerHide:Z

    .line 1023
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/reflect/view/SeslDecorViewReflector;->semSetForceHideRoundedCorner(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getCurrentNavbarCanMoveState()Z
    .locals 4

    .line 1035
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_navBarCanMove"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1037
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1041
    sget-object v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private isAccessibilityEnabled()Z
    .locals 1

    .line 1065
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "accessibility"

    .line 1069
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 1070
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method private isDexEnabled()Z
    .locals 0

    .line 1052
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1056
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 1055
    invoke-static {p0}, Landroidx/reflect/content/res/SeslConfigurationReflector;->isDexEnabled(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static isGestureNavigateEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 1130
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_navBarInteractionMode"

    const-string v2, "integer"

    const-string v3, "android"

    .line 1131
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

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

.method private isHideCameraCutout(Landroid/view/WindowInsets;)Z
    .locals 1

    .line 1047
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p0

    .line 1048
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

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

.method private isLandscape()Z
    .locals 2

    .line 402
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getCurrentOrientation()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isNavigationBarBottomPosition()Z
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    .line 415
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 417
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    .line 416
    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    .line 418
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private isTouchInGestureNavigationArea(FLandroid/view/WindowInsets;)Z
    .locals 2

    .line 1116
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1117
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v0

    .line 1118
    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    .line 1119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1120
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1121
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private prepareImmersiveScroll(ZZ)V
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    if-eq v0, p1, :cond_0

    .line 358
    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    .line 359
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->forceRestoreWindowInset(Z)V

    .line 360
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->setupDecorsFitSystemWindowState(Z)V

    .line 361
    iget-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 362
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setCanScroll(Z)V

    :cond_0
    return-void
.end method

.method private resetWindowInsetsAnimationController()V
    .locals 1

    const/4 v0, 0x0

    .line 845
    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    .line 846
    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v0, 0x0

    .line 847
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mShownAtDown:Z

    return-void
.end method

.method private setInsetsAndAlphaToDefault()V
    .locals 6

    .line 827
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/material/internal/SeslDisplayUtils;->isPinEdgeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 829
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/material/internal/SeslDisplayUtils;->getPinnedEdgeWidth(Landroid/content/Context;)I

    move-result v2

    .line 830
    iget-object v3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/material/internal/SeslDisplayUtils;->getEdgeArea(Landroid/content/Context;)I

    move-result v3

    .line 832
    iget v4, v0, Landroid/graphics/Insets;->left:I

    if-ne v2, v4, :cond_0

    if-nez v3, :cond_0

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    .line 834
    :cond_0
    iget v0, v0, Landroid/graphics/Insets;->right:I

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 838
    :goto_0
    iget v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    int-to-float v0, v0

    .line 839
    iget v3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    int-to-float v3, v3

    .line 840
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p0, v0, v1, v1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    return-void
.end method

.method private setWindowInsetsController()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-nez v1, :cond_1

    .line 763
    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    :cond_1
    :goto_0
    return-void
.end method

.method private setupDecorsFitSystemWindowState(Z)V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->useCustomAnimationCallback:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 429
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/material/internal/SeslContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 436
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_2

    .line 437
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    .line 438
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/internal/SeslContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_7

    .line 441
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 445
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isHideCameraCutout(Landroid/view/WindowInsets;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 446
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setImmersiveTopInset(I)V

    goto :goto_0

    .line 448
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    invoke-virtual {p1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setImmersiveTopInset(I)V

    .line 451
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 452
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 454
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz p1, :cond_7

    .line 455
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->top:I

    if-eqz p1, :cond_7

    .line 456
    iget v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    if-eq p1, v0, :cond_7

    .line 457
    iput p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    .line 458
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setImmersiveTopInset(I)V

    goto :goto_1

    .line 462
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setImmersiveTopInset(I)V

    const/4 p1, 0x1

    .line 463
    invoke-virtual {v0, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 464
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 465
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isNavigationBarBottomPosition()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 466
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-nez v0, :cond_5

    .line 467
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->setWindowInsetsController()V

    .line 469
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    .line 470
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 472
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    .line 471
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_6

    move v1, p1

    :cond_6
    if-eqz v1, :cond_7

    .line 475
    :try_start_0
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 477
    :catch_0
    sget-object p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setupDecorsFitSystemWindowState: mWindowInsetsController.hide failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method private startAnimationControlRequest()V
    .locals 8

    .line 768
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->setWindowInsetsController()V

    .line 771
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 775
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    .line 776
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isHideCameraCutout(Landroid/view/WindowInsets;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->hide(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    sget-object v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAnimationControlRequest: mWindowInsetsController.hide failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 785
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v7, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsAnimationControlListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface/range {v1 .. v7}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method private startRestoreAnimation()V
    .locals 3

    .line 909
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isAppBarHide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 911
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->animateRestoreTopAndBottom(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    :cond_0
    return-void
.end method

.method private updateAppBarHeightProportion()V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 611
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 618
    sget v1, Lcom/google/android/material/R$dimen;->sesl_appbar_height_proportion:I

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    .line 620
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    .line 621
    iget v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    .line 624
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    if-eqz v0, :cond_3

    .line 625
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->internalProportion(F)V

    goto :goto_0

    .line 627
    :cond_3
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->internalProportion(F)V

    :goto_0
    return-void
.end method

.method private updateOrientationState()Z
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 381
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getCurrentOrientation()I

    move-result v0

    .line 382
    iget v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mPrevOrientation:I

    const/4 v3, 0x1

    if-eq v2, v0, :cond_1

    .line 383
    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mPrevOrientation:I

    .line 384
    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->forceRestoreWindowInset(Z)V

    .line 385
    iput-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCalledHideShowOnLayoutChild:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    .line 395
    sget-object p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    const-string v0, "ERROR, e : AppbarLayout Configuration is wrong"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method private updateSystemBarsHeight()V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 587
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 589
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarHeight:I

    :cond_1
    const-string/jumbo v1, "navigation_bar_height"

    .line 592
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 594
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 598
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz v0, :cond_3

    .line 600
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 601
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    iput v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarHeight:I

    :cond_3
    return-void
.end method


# virtual methods
.method cancelWindowInsetsAnimationController()V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz v0, :cond_2

    .line 679
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    .line 680
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    .line 681
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    .line 680
    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 682
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mShownAtDown:Z

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_3

    .line 687
    iget-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mShownAtDown:Z

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 689
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_4

    .line 690
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 692
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->resetWindowInsetsAnimationController()V

    return-void
.end method

.method protected dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 875
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 876
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mToolIsMouse:Z

    if-eq v1, v0, :cond_1

    .line 877
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mToolIsMouse:Z

    .line 878
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    .line 879
    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->seslSetIsMouse(Z)V

    .line 880
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->dispatchImmersiveScrollEnabled()Z

    .line 883
    :cond_1
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method dispatchImmersiveScrollEnabled()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->isDetachedState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->canImmersiveScroll()Z

    move-result v0

    .line 347
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->setupDecorsFitSystemWindowState(Z)V

    .line 348
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateAppBarHeightProportion()V

    .line 349
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateSystemBarsHeight()V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method forceRestoreWindowInset(Z)V
    .locals 3

    .line 714
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz v0, :cond_2

    .line 717
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    .line 718
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isAppBarHide()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 722
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->show(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 724
    :catch_0
    sget-object p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    const-string p1, "forceRestoreWindowInset: mWindowInsetsController.show failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method initImmViews(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 3

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCanImmersiveScroll:Z

    .line 528
    iput-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 529
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 530
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 531
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->isImmersiveActivatedByUser()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isDexEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->internalActivateImmersiveScroll(ZZ)V

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    const v2, 0x1020002

    .line 535
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContentView:Landroid/view/View;

    .line 536
    iget-boolean v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->useCustomAnimationCallback:Z

    if-eqz v2, :cond_1

    .line 537
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCustomWindowInsetsAnimation:Landroid/view/WindowInsetsAnimation$Callback;

    invoke-virtual {v1, v2}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    goto :goto_0

    .line 539
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    invoke-virtual {v1, v2}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 542
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->findSystemBarsBackground()V

    .line 543
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->dispatchImmersiveScrollEnabled()Z

    .line 544
    :goto_1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 545
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v2, :cond_2

    goto :goto_2

    .line 549
    :cond_2
    instance-of v2, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v2, :cond_3

    .line 550
    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 555
    :cond_4
    :goto_2
    sget p2, Lcom/google/android/material/R$id;->bottom_bar_overlay:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 556
    iget-object p2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_6

    .line 557
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    :cond_6
    return-void
.end method

.method isAppBarHide()Z
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 1061
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

.method protected bridge synthetic layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    .line 48
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method protected layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    .line 489
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 491
    iget-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOnInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    if-nez p3, :cond_0

    .line 492
    new-instance p3, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;

    invoke-direct {p3, p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V

    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOnInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 518
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v0, p3}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 521
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p3, :cond_1

    if-eq p2, p3, :cond_2

    .line 522
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->initImmViews(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_2
    return-void
.end method

.method notifyOnApplyWindowInsets()V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->cancelWindowInsetsAnimationController()V

    .line 698
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->updateSystemBarsHeight()V

    .line 700
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    :cond_0
    return-void
.end method

.method notifyOnDetachedFromWindow()V
    .locals 2

    .line 705
    sget-object v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    const-string v1, "DetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOnInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    if-eqz v0, :cond_0

    .line 707
    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mWindowInsetsController:Landroid/view/WindowInsetsController;

    invoke-interface {v1, v0}, Landroid/view/WindowInsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mOnInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->resetWindowInsetsAnimationController()V

    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 48
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 853
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 855
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v0, v3

    .line 859
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mToolIsMouse:Z

    if-eq v1, v0, :cond_2

    .line 860
    iput-boolean v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mToolIsMouse:Z

    .line 861
    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->seslSetIsMouse(Z)V

    .line 864
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isGestureNavigateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 865
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isTouchInGestureNavigationArea(FLandroid/view/WindowInsets;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 870
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 48
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p0

    return p0
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .locals 0

    .line 371
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->dispatchImmersiveScrollEnabled()Z

    .line 372
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 48
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 1

    .line 658
    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    .line 659
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 660
    aput p4, p6, p0

    const/4 p0, 0x1

    .line 661
    aput p5, p6, p0

    return-void

    .line 665
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    .line 48
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 0

    .line 650
    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    .line 651
    invoke-super/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 48
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 634
    iput-object p4, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    .line 635
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->dispatchImmersiveScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationController:Landroid/view/WindowInsetsAnimationController;

    if-nez v0, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->startAnimationControlRequest()V

    .line 642
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 48
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 0

    .line 671
    iput-object p3, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mTargetView:Landroid/view/View;

    .line 672
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method restoreTopAndBottom(Z)V
    .locals 3

    .line 916
    sget-object v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Restore top and bottom areas [Animate] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iput-boolean p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNeedRestoreAnim:Z

    .line 918
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v0, 0x64

    if-eqz p1, :cond_1

    .line 919
    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isAppBarHide()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 920
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 921
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 923
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 927
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mNavigationBarBg:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 929
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslIsActivatedImmsersiveScroll()Z

    move-result p1

    if-nez p1, :cond_2

    .line 930
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method setupDecorFitsSystemWindow()V
    .locals 3

    .line 1074
    sget-object v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->TAG:Ljava/lang/String;

    const-string v1, "fits system window Immersive detached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/material/internal/SeslContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 1077
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1078
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mBottomArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1084
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mStatusBarBg:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method
