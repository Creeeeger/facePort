.class public final Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/back/BackAnimationSpec;


# instance fields
.field public final synthetic $displayMetricsProvider:Lkotlin/jvm/functions/Function0;

.field public final synthetic $maxMarginXdp:F

.field public final synthetic $maxMarginYdp:F

.field public final synthetic $minScale:F

.field public final synthetic $scaleEasing:Landroid/view/animation/Interpolator;

.field public final synthetic $translateXEasing:Landroid/view/animation/Interpolator;

.field public final synthetic $translateYEasing:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;FFFLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "FFF",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$displayMetricsProvider:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$maxMarginXdp:F

    iput p3, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$maxMarginYdp:F

    iput p4, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$minScale:F

    iput-object p5, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$translateXEasing:Landroid/view/animation/Interpolator;

    iput-object p6, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$translateYEasing:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$scaleEasing:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackTransformation(Landroid/window/BackEvent;FLcom/android/systemui/animation/back/BackTransformation;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$displayMetricsProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$maxMarginXdp:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/systemui/util/DimensionKt;->dpToPx(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$maxMarginYdp:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/systemui/util/DimensionKt;->dpToPx(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v0

    int-to-float v1, v1

    iget v4, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$minScale:F

    mul-float v5, v1, v4

    sub-float/2addr v1, v5

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v1, v5

    sub-float/2addr v1, v3

    int-to-float v2, v2

    mul-float v3, v2, v4

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, v4

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    iget-object v5, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$translateXEasing:Landroid/view/animation/Interpolator;

    invoke-interface {v5, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$translateYEasing:Landroid/view/animation/Interpolator;

    invoke-interface {v6, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/animation/back/BackAnimationSpecKt$createFloatingSurfaceAnimationSpec$1;->$scaleEasing:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    int-to-float p1, v4

    mul-float/2addr v5, p1

    mul-float/2addr v5, v1

    iput v5, p3, Lcom/android/systemui/animation/back/BackTransformation;->translateX:F

    mul-float/2addr p2, v2

    iput p2, p3, Lcom/android/systemui/animation/back/BackTransformation;->translateY:F

    mul-float/2addr p0, v3

    sub-float/2addr v0, p0

    iput v0, p3, Lcom/android/systemui/animation/back/BackTransformation;->scale:F

    return-void
.end method
