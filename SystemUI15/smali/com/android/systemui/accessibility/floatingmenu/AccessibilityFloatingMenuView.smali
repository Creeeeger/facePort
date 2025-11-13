.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;

.field public final mAccessibilityFloatingReceiver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;

.field public final mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

.field public mAlignment:I

.field final mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mDisplayHeight:I

.field public final mDisplayInsetsRect:Landroid/graphics/Rect;

.field public mDisplayWidth:I

.field public mDownX:I

.field public mDownY:I

.field final mDragAnimator:Landroid/animation/ValueAnimator;

.field public mEditTooltipView:Lcom/android/systemui/accessibility/floatingmenu/EditTooltipView;

.field public final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field public mFadeOutValue:F

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mHandleFirstPositionY:I

.field public mHasNavigationBarGesture:Z

.field public mHideHandleHeight:I

.field public mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mHideHandleWidth:I

.field public mIconHeight:I

.field public mIconWidth:I

.field public final mImeInsetsRect:Landroid/graphics/Rect;

.field public mInset:I

.field public mIsDownInEnlargedTouchArea:Z

.field public mIsDragging:Z

.field public mIsFadeEffectEnabled:Z

.field public mIsHideHandle:Z

.field public mIsLongClicked:Z

.field public mIsRepeatVibrations:Z

.field public mIsShowing:Z

.field public mIsSwipeForHandle:Z

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public final mListView:Landroidx/recyclerview/widget/RecyclerView;

.field public mMargin:I

.field public mMarginForCoverScreen:I

.field public mNavigationBarHeight:I

.field public mOnDragEndListener:Ljava/util/Optional;

.field public mPadding:I

.field public final mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

.field public mRadius:F

.field public mRadiusType:I

.field public mRelativeToPointerDownX:I

.field public mRelativeToPointerDownY:I

.field mShapeType:I

.field public mSizeType:I

.field public mSquareScaledTouchSlop:F

.field public final mTargets:Ljava/util/List;

.field public mTemporaryShapeType:I

.field public final mUiHandler:Landroid/os/Handler;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/Position;)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/Position;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/Position;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayInsetsRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mImeInsetsRect:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mOnDragEndListener:Ljava/util/Optional;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHasNavigationBarGesture:Z

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsLongClicked:Z

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsRepeatVibrations:Z

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsSwipeForHandle:Z

    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHandleFirstPositionY:I

    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mNavigationBarHeight:I

    new-instance v4, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    iput-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityDelegate:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;

    new-instance v4, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    iput-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityFloatingReceiver:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const-class p3, Landroid/view/WindowManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    new-instance p3, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {p3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    new-instance p3, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-direct {p3, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "looper must not be null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p3, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    iget p3, p2, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    invoke-static {p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformToAlignment(F)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    if-ne p3, v0, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    iput p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateDimensions()V

    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x208

    const/4 v8, -0x3

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x7e8

    move-object v3, p3

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-boolean v0, p3, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x1030003

    iput v3, p3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const v3, 0x800033

    iput v3, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    if-ne v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result v3

    :goto_1
    iput v3, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p2, p2, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p2, v3

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getInterval()I

    move-result v3

    sub-int/2addr p2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f13009b

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const-string p2, "AccessibilityFloatingMenuView"

    invoke-virtual {p3, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    const/high16 p3, 0x3f800000    # 1.0f

    new-array v3, v1, [F

    aput p3, v3, v2

    aput p2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p2, v1, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->initListView()V

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p3, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p2, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static isFrontDisplay(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isFrontDisplay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityFloatingMenuView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static transformToAlignment(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public final calculateCurrentPercentageY()F
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    :goto_0
    div-float/2addr v0, p0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result p0

    int-to-float p0, p0

    goto :goto_0
.end method

.method public fadeIn()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fadeOut()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;I)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getAvailableBounds()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    sub-int/2addr v2, p0

    const/4 p0, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getInterval()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    iget v0, v0, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mImeInsetsRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    add-int/2addr p0, v0

    if-le p0, v1, :cond_0

    sub-int/2addr p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getLayoutWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconWidth:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getMarginStartEndWith(Landroid/content/res/Configuration;)I
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getMaxWindowX()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->offsetForLeftNaviBar()Z

    move-result v0

    const v1, 0x7f070036

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_FOLDERBLE_TYPE_FOLD:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isFrontDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isTablet()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ac2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p0

    goto :goto_0
.end method

.method public final getMaxWindowXForHandle()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->offsetForLeftNaviBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_FOLDERBLE_TYPE_FOLD:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isFrontDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isTablet()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ac2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070036

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    goto :goto_0
.end method

.method public final getMaxWindowY()I
    .locals 2

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMarginForCoverScreen:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getMinWindowX()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public final getMinWindowXForHandle()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->offsetForLeftNaviBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mNavigationBarHeight:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public final getNavigationBarHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10502c9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getWindowHeight()I
    .locals 5

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    add-int/2addr v3, v4

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    mul-int/2addr p0, v3

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final getWindowWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMarginStartEndWith(Landroid/content/res/Configuration;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public hasExceededMaxLayoutHeight()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    if-le v1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initListView()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08064f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_floating_menu_icon_type"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMarginForCoverScreen:I

    invoke-virtual {v2, v5, v3, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v5

    invoke-direct {v2, v4}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityDelegate:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final isEdgeArea()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v2

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    add-int/2addr v2, p0

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, v0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getNavigationBarHeight()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v2, v1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le p0, v0, :cond_5

    if-lt p0, v2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :cond_5
    :goto_1
    return v3
.end method

.method public final offsetForLeftNaviBar()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHasNavigationBarGesture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_FOLDERBLE_TYPE_FOLD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isFrontDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateDimensions()V

    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateItemViewDimensionsWith(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    iput v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mItemPadding:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconWidth:I

    iput v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mIconWidthHeight:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060021

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandleLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    :goto_0
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(II)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededMaxLayoutHeight()Z

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1a

    const/4 v3, 0x2

    if-eq p2, v2, :cond_9

    if-eq p2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    sub-int p2, p1, p2

    int-to-float p2, p2

    invoke-static {p2}, Landroid/util/MathUtils;->sq(F)F

    move-result p2

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-static {v3}, Landroid/util/MathUtils;->sq(F)F

    move-result v3

    add-float/2addr v3, p2

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSquareScaledTouchSlop:F

    cmpl-float p2, v3, p2

    if-lez p2, :cond_1e

    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-nez p2, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadius:F

    invoke-virtual {p0, p2, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setRadius(FI)V

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setInset(II)V

    :cond_2
    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    if-ne p2, v2, :cond_3

    if-gt p1, v3, :cond_5

    :cond_3
    if-nez p2, :cond_4

    if-le v3, p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :cond_5
    :goto_0
    iput v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTemporaryShapeType:I

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownX:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownY:I

    add-int/2addr v0, p2

    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsLongClicked:Z

    if-eqz p2, :cond_6

    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsLongClicked:Z

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mEditTooltipView:Lcom/android/systemui/accessibility/floatingmenu/EditTooltipView;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mEditTooltipView:Lcom/android/systemui/accessibility/floatingmenu/EditTooltipView;

    invoke-virtual {p2}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->hide()V

    :cond_7
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowXForHandle()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v3

    invoke-static {p1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    sub-int/2addr p2, v2

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_7

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v3

    invoke-static {p1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result p2

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_7

    :cond_9
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsLongClicked:Z

    if-eqz p2, :cond_a

    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsLongClicked:Z

    return v2

    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsRepeatVibrations:Z

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformCurrentPercentageXToEdge()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateCurrentPercentageY()F

    move-result v5

    iput v4, p2, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    iput v5, p2, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    const-string v5, "AccessibilityFloatingMenuPosition"

    invoke-virtual {v4}, Lcom/android/systemui/accessibility/floatingmenu/Position;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v5, v4}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    iget p2, p2, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    invoke-static {p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformToAlignment(F)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    if-ne p2, v2, :cond_b

    move p2, v1

    goto :goto_1

    :cond_b
    move p2, v3

    :goto_1
    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-boolean v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v4, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-nez v5, :cond_c

    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->showFloatingButton(IZ)V

    goto/16 :goto_5

    :cond_c
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-eqz p2, :cond_18

    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsDragging:Z

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isEdgeArea()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowXForHandle()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v6, p2, v1

    div-int/2addr v6, v3

    if-le v5, v6, :cond_d

    move p2, v1

    :cond_d
    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    goto :goto_2

    :cond_e
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->showFloatingButton(IZ)V

    goto :goto_2

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isEdgeArea()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v6, p2, v1

    div-int/2addr v6, v3

    if-le v5, v6, :cond_10

    move p2, v1

    :cond_10
    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    :cond_11
    :goto_2
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-nez p2, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isEdgeArea()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050566

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ne v1, v2, :cond_12

    invoke-static {}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isTablet()Z

    move-result v1

    if-nez v1, :cond_12

    add-int/2addr p2, v4

    goto :goto_3

    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->offsetForLeftNaviBar()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mNavigationBarHeight:I

    add-int/2addr p2, v1

    :cond_13
    :goto_3
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    if-le v1, p2, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result p2

    if-ge v1, p2, :cond_14

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p2

    div-int/2addr p2, v3

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    if-ne v1, v2, :cond_15

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    sub-int v4, p1, v4

    if-gt v4, p2, :cond_16

    :cond_15
    if-nez v1, :cond_17

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    sub-int/2addr v1, p1

    if-le v1, p2, :cond_17

    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getLayoutWidth()I

    move-result p1

    div-int/2addr p1, v3

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p2, p1, :cond_17

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsSwipeForHandle:Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandle(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1300b2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_4
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTemporaryShapeType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    return v2

    :cond_18
    :goto_5
    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    goto :goto_7

    :cond_19
    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    return v2

    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "AccessibilityFloatingMenuArea"

    invoke-static {p1, p2, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateDisplaySizeWith(Landroid/view/WindowMetrics;)V

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownX:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownY:I

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsRepeatVibrations:Z

    if-nez p1, :cond_1d

    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsRepeatVibrations:Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/VibratorHelper;->isSupportDCMotorHapticFeedback()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrateButton()V

    goto :goto_6

    :cond_1b
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_6

    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownX:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownX:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDownY:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRelativeToPointerDownY:I

    :cond_1d
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_1e
    :goto_7
    return v1
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public final onTargetsChanged(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(II)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededMaxLayoutHeight()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final setInset(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v1, :cond_2

    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    if-nez p1, :cond_0

    iget v6, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMarginForCoverScreen:I

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move v3, v6

    move v4, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;->setLayerInset(IIIII)V

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMarginForCoverScreen:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;->setLayerInset(IIIII)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget v6, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMarginForCoverScreen:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move v4, v6

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;->setLayerInset(IIIII)V

    iget v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMarginForCoverScreen:I

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;->setLayerInset(IIIII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result p0

    if-ne p0, p2, :cond_3

    return-void

    :cond_3
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;->setLayerInset(IIIII)V

    return-void
.end method

.method public final setRadius(FI)V
    .locals 10

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez p2, :cond_0

    new-array p2, v6, [F

    aput p1, p2, v8

    aput p1, p2, v5

    aput v9, p2, v7

    aput v9, p2, v4

    aput v9, p2, v3

    aput v9, p2, v2

    aput p1, p2, v1

    aput p1, p2, v0

    goto :goto_0

    :cond_0
    if-ne p2, v7, :cond_1

    new-array p2, v6, [F

    aput v9, p2, v8

    aput v9, p2, v5

    aput p1, p2, v7

    aput p1, p2, v4

    aput p1, p2, v3

    aput p1, p2, v2

    aput v9, p2, v1

    aput v9, p2, v0

    goto :goto_0

    :cond_1
    new-array p2, v6, [F

    aput p1, p2, v8

    aput p1, p2, v5

    aput p1, p2, v7

    aput p1, p2, v4

    aput p1, p2, v3

    aput p1, p2, v2

    aput p1, p2, v1

    aput p1, p2, v0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method

.method public final setShapeType(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mShapeType:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

.method public final setSizeType(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateItemViewDimensionsWith(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    div-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandle(I)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandleLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeIn()V

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateItemViewDimensionsWith(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    iput v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mItemPadding:I

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconWidth:I

    iput v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mIconWidthHeight:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(II)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hasExceededMaxLayoutHeight()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSystemGestureExclusion()V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    :goto_0
    return-void
.end method

.method public final setSystemGestureExclusion()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showFloatingButton(IZ)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->initListView()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_floating_menu_size"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSizeType(I)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result v0

    :goto_0
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(II)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f13009b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isEdgeArea()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    move p1, p2

    :cond_2
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->snapToLocation(II)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f1300ae

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public snapToLocation(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDragAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final transformCurrentPercentageXToEdge()F
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr v0, p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result p0

    goto :goto_0

    :goto_1
    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_2
    return p0
.end method

.method public final updateDimensions()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateDisplaySizeWith(Landroid/view/WindowMetrics;)V

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMargin:I

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mMarginForCoverScreen:I

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mInset:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->sq(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSquareScaledTouchSlop:F

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateItemViewDimensionsWith(I)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getNavigationBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mNavigationBarHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHasNavigationBarGesture:Z

    return-void
.end method

.method public final updateDisplaySizeWith(Landroid/view/WindowMetrics;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayInsetsRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    return-void
.end method

.method public final updateHideHandle(I)V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x208

    const/4 v9, -0x3

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7e8

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v3, 0x1030003

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const v3, 0x800033

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAlignment:I

    if-ne v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowXForHandle()I

    move-result v3

    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    div-int/2addr v3, v2

    sub-int/2addr p1, v3

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHandleFirstPositionY:I

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f08064e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f08064f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    iget v6, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_floating_menu_icon_type"

    const/16 v7, 0x9

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    aput-object p1, v2, v0

    invoke-direct {v4, v2}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13009b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAccessibilityDelegate:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$4;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mSizeType:I

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mTargets:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateRadiusWith(II)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5, v5}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setInset(II)V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final updateHideHandleLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V
    .locals 3

    iget v0, p1, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    invoke-static {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformToAlignment(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowXForHandle()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowXForHandle()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsSwipeForHandle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHandleFirstPositionY:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformCurrentPercentageXToEdge()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->calculateCurrentPercentageY()F

    move-result v2

    iput v0, p1, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    iput v2, p1, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    iput-boolean v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsSwipeForHandle:Z

    goto :goto_1

    :cond_1
    iget p1, p1, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getInterval()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final updateItemViewDimensionsWith(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_0

    const v1, 0x7f070047

    goto :goto_0

    :cond_0
    const v1, 0x7f070036

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mPadding:I

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v1

    const v2, 0x7f07003c

    const v3, 0x7f070049

    const/16 v4, 0x9

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    const v2, 0x7f070045

    goto :goto_2

    :cond_1
    if-ne p1, v4, :cond_5

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    const v2, 0x7f070038

    :cond_5
    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconWidth:I

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIconHeight:I

    return-void
.end method

.method public final updateLocationWith(Lcom/android/systemui/accessibility/floatingmenu/Position;)V
    .locals 3

    iget v0, p1, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageX:F

    invoke-static {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->transformToAlignment(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowX()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMinWindowX()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, p1, Lcom/android/systemui/accessibility/floatingmenu/Position;->mPercentageY:F

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getMaxWindowY()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getInterval()I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final updateOpacityWith(FZ)V
    .locals 3

    iput-boolean p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mFadeOutValue:F

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsFadeEffectEnabled:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mUiHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final updateRadiusWith(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v1

    const v2, 0x7f07003b

    const v3, 0x7f070046

    const/16 v4, 0x9

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const v2, 0x7f070044

    goto :goto_1

    :cond_0
    if-ne p1, v4, :cond_4

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    const v2, 0x7f070035

    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadius:F

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setRadius(FI)V

    return-void
.end method

.method public final updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-string p0, "addViewAttachStateChangeListener called"

    const-string p1, "AccessibilityFloatingMenuView"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "Debug callstack : "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
