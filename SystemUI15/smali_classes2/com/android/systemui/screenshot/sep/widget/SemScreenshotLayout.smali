.class public Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CUSTOM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final SINEINOUT70:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

.field public mCallback:Lcom/android/systemui/screenshot/ScreenshotController$2;

.field public mCornerRadius:I

.field public mScreenDegrees:F

.field public mScreenshotImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->CUSTOM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->SINEINOUT70:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    const-string p1, "Screenshot"

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    const-string p1, "Screenshot"

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    const-string p1, "Screenshot"

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addCaptureEffectViewInLayout(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isB5ScreenEffect()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    const-string v2, "isB5ScreenEffect: "

    invoke-static {v2, v1, v0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectViewB5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    iget v1, p1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->setDegree(F)V

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isLetterBoxHide()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isB5CoverScreenInReverseMode()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getScreenshotEffectRect()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x50

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object p1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mCornerRadius:I

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final startAnimation(FF)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v4, "any_screen_running"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const v2, 0x7f07043b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mCornerRadius:I

    :cond_1
    iget v0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mCornerRadius:I

    iget-object v2, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setupAndStartAnimation: screenWidth:"

    const-string v6, " screenHeight:"

    const-string v7, " cornerRadius:"

    invoke-static {v4, p1, v6, p2, v7}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mCornerRadius:I

    invoke-static {p2, v2, p1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->TAG:Ljava/lang/String;

    const-string p1, "mAnimationView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget p2, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenDegrees:F

    const/4 v2, 0x0

    cmpl-float v4, p2, v2

    if-eqz v4, :cond_4

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float p2, p2, v4

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1, v0, v0}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->setEffectParams(III)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p1, v1, v0, v0}, Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;->setEffectParams(III)V

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mAnimationView:Lcom/android/systemui/screenshot/sep/widget/CaptureEffectView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {v5, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {p2, p0, v0, v0, v4}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;III)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p2, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->SINEINOUT70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x96

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    filled-new-array {v1, v5}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v0, v0, v4}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;III)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->CUSTOM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xa7

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xd8

    invoke-virtual {p2, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object p1, v8, v5

    aput-object p2, v8, v3

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$1;-><init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;)V

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, p2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v0, 0x42

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    invoke-virtual {v5, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance p2, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;

    invoke-direct {p2, p0, v5}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$2;-><init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance p2, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout$3;-><init>(Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;)V

    invoke-virtual {v5, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
