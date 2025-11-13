.class public final Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;
.super Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimationSet:Landroid/animation/AnimatorSet;

.field public mImageFrame:Landroid/widget/ImageView;

.field public mLightingAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->init()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 8

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    const v1, 0x7f08078c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public final startAnimation()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    new-array v5, v2, [F

    fill-array-data v5, :array_0

    const-string/jumbo v6, "rotation"

    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x1770

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v5, v5, v3}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    iget-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    new-array v6, v1, [F

    aput v5, v6, v0

    const-string v5, "alpha"

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x15e

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, v0

    aput-object v4, v2, v1

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final stopAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mLightingAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
