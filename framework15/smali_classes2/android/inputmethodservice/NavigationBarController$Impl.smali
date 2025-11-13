.class final Landroid/inputmethodservice/NavigationBarController$Impl;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Landroid/inputmethodservice/NavigationBarController$Callback;
.implements Landroid/view/Window$DecorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/NavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Impl"
.end annotation


# static fields
.field private static final blacklist DEFAULT_COLOR_ADAPT_TRANSITION_TIME:I = 0x6a4

.field private static final blacklist LEGACY_DECELERATE:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mDarkIntensity:F

.field private blacklist mDestroyed:Z

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mImeDrawsImeNavBar:Z

.field blacklist mLastInsets:Landroid/graphics/Insets;

.field private blacklist mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

.field private final blacklist mService:Landroid/inputmethodservice/InputMethodService;

.field private blacklist mShouldShowImeSwitcherWhenImeIsShown:Z

.field private final blacklist mTempPos:[I

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTintAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic blacklist $r8$lambda$BTqYxiYSEoN6u1LxgBuq02uEewI(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;->lambda$onSystemBarAppearanceChanged$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LeW2_jAdgO1YT6PUdb1mPSGj9vg(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;->lambda$scheduleRelayout$1(Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Y8cUfiVR_BiPejPvETKg89BeAwg(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/NavigationBarController$Impl;->lambda$installNavigationBarFrameIfNecessary$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/NavigationBarController$Impl;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    iput-object p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method private static blacklist calculateTargetDarkIntensity(IZ)F
    .locals 2

    if-nez p1, :cond_0

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private blacklist getImeCaptionBarHeight()I
    .locals 2

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist getSystemInsets()Landroid/graphics/Insets;
    .locals 5

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    nop

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    return-object v3
.end method

.method private blacklist installNavigationBarFrameIfNecessary()V
    .locals 8

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    return-void

    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const-class v2, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/16 v4, 0x50

    const/4 v5, -0x1

    if-nez v3, :cond_6

    new-instance v3, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v3, v6}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x10900a4

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v6, v5, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v4, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    if-eqz v3, :cond_5

    nop

    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    or-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    :cond_5
    goto :goto_2

    :cond_6
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v6, v5, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    :goto_2
    iget-boolean v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_3

    :cond_7
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {v3, v4}, Landroid/inputmethodservice/NavigationBarController$Impl;->calculateTargetDarkIntensity(IZ)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/inputmethodservice/NavigationBarController$Impl;->setIconTintInternal(F)V

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v4, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;)V

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$installNavigationBarFrameIfNecessary$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$onSystemBarAppearanceChanged$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->setIconTintInternal(F)V

    return-void
.end method

.method private synthetic blacklist lambda$scheduleRelayout$1(Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V
    .locals 8

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    return-void

    :cond_4
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v3, Landroid/graphics/Insets;->bottom:I

    const/16 v6, 0x50

    const/4 v7, -0x1

    invoke-direct {v4, v7, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    :cond_5
    nop

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_6

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method private blacklist scheduleRelayout()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v1, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda3;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist setIconTintInternal(F)V
    .locals 3

    iput p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v1, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setDarkIntensity(F)V

    return-void
.end method

.method private blacklist uninstallNavigationBarFrameIfNecessary()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    return-void
.end method


# virtual methods
.method public blacklist isShown()Z
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onDestroy()V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    return-void
.end method

.method public blacklist onDrawLegacyNavigationBarBackgroundChanged(Z)Z
    .locals 2

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eq p1, v0, :cond_3

    iput-boolean p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->scheduleRelayout()V

    :cond_2
    iget v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->onSystemBarAppearanceChanged(I)V

    :cond_3
    return p1
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .locals 8

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    iput-boolean v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v5, v5, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v5

    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getImeCaptionBarHeight()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/WindowInsetsController;->setImeCaptionBarInsetsHeight(I)V

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->installNavigationBarFrameIfNecessary()V

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v5, :cond_3

    return-void

    :cond_3
    iget-boolean v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-ne v5, v4, :cond_4

    return-void

    :cond_4
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v6, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v7, v6}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5, v7}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    if-nez v5, :cond_5

    return-void

    :cond_5
    nop

    if-eqz v3, :cond_6

    const/4 v1, 0x4

    goto :goto_2

    :cond_6
    nop

    :goto_2
    or-int/2addr v1, v2

    invoke-virtual {v5, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->uninstallNavigationBarFrameIfNecessary()V

    :goto_3
    return-void
.end method

.method public blacklist onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .locals 2

    invoke-virtual {p1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->setDecorCallback(Landroid/view/Window$DecorCallback;)V

    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .locals 4

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {v0, v1}, Landroid/inputmethodservice/NavigationBarController$Impl;->calculateTargetDarkIntensity(IZ)F

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/inputmethodservice/NavigationBarController$Impl;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public blacklist onViewInitialized()V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->installNavigationBarFrameIfNecessary()V

    return-void
.end method

.method public blacklist onWindowShown()V
    .locals 7

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    const/16 v4, 0x50

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_2

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mImeDrawsImeNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNavigationBarFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShouldShowImeSwitcherWhenImeIsShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppearance=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDarkIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDrawLegacyNavigationBarBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getLocationInWindow([I)V

    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    const/4 v2, 0x1

    aget v3, v0, v2

    if-le v1, v3, :cond_1

    aget v1, v0, v2

    iput v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    :cond_1
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    aget v3, v0, v2

    if-le v1, v3, :cond_2

    aget v1, v0, v2

    iput v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 13

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x0

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v6, v6, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    iget v7, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    move-object v3, v7

    iget-object v7, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v5

    iget v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v4

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v7, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v7

    goto :goto_0

    :pswitch_2
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v5

    iget v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v4

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v7, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v7

    goto :goto_0

    :pswitch_3
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v5

    iget-object v9, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v9, v9, v4

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v4

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v7, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v7

    :cond_1
    :goto_0
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v3, :cond_2

    new-instance v7, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v7

    goto :goto_1

    :cond_2
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :goto_1
    iget-object v7, p2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v7, 0x3

    invoke-virtual {p2, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    :cond_3
    const/4 v3, 0x0

    instance-of v6, v2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    if-le v8, v9, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    nop

    :goto_2
    move v3, v5

    :cond_5
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v4, v5

    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->scheduleRelayout()V

    :cond_7
    return-void

    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
