.class public abstract Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;
.super Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAnimationSet:Landroid/animation/AnimatorSet;

.field public mBottomLayer:Landroid/widget/ImageView;

.field public mContainer:Landroid/widget/FrameLayout;

.field public final mHsvColors:[F

.field public mIsAnimating:Z

.field public mMainColor:I

.field public mMainLayer:Landroid/view/View;

.field public mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

.field public mRotateDuration:J

.field public mStrokeAlpha:F

.field public mSubColor:I

.field public mTopLayer:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    const-string p1, "AbsEdgeLightingMaskView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    const-string p1, "AbsEdgeLightingMaskView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    const-string p1, "AbsEdgeLightingMaskView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;

    const-string p1, "AbsEdgeLightingMaskView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mHsvColors:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->init()V

    return-void
.end method

.method public static changeRingImageAlpha(Landroid/view/View;FJ)V
    .locals 3

    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final expandViewSize(Landroid/widget/ImageView;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    iget p0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    if-le p0, v0, :cond_0

    move v0, p0

    :cond_0
    int-to-float p0, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d01ed

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a03f9

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0d61

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    const v0, 0x7f0a0687

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071717

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final isRotateAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->TAG:Ljava/lang/String;

    const-string v0, "Rotation animation running"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;-><init>(Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mOneHandSettingObserver:Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView$3;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final startRotation(J)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainLayer:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    new-array v6, v1, [F

    aput v5, v6, v0

    const-string v5, "alpha"

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    const-string/jumbo v7, "rotation"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, -0x1

    invoke-virtual {v5, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v6, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v6, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v6, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v4, v4, p2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v4, v4, p2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v5, p2, v0

    aput-object v6, p2, v1

    aput-object v3, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
