.class public Lcom/airbnb/lottie/value/Keyframe;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final composition:Lcom/airbnb/lottie/LottieComposition;

.field public endFrame:Ljava/lang/Float;

.field public endProgress:F

.field public endValue:Ljava/lang/Object;

.field public endValueFloat:F

.field public endValueInt:I

.field public final interpolator:Landroid/view/animation/Interpolator;

.field public pathCp1:Landroid/graphics/PointF;

.field public pathCp2:Landroid/graphics/PointF;

.field public final startFrame:F

.field public startProgress:F

.field public final startValue:Ljava/lang/Object;

.field public startValueFloat:F

.field public startValueInt:I

.field public final xInterpolator:Landroid/view/animation/Interpolator;

.field public final yInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iput-object p6, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/airbnb/lottie/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/airbnb/lottie/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iput p6, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iput-object p5, p0, Lcom/airbnb/lottie/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iput-object p6, p0, Lcom/airbnb/lottie/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iput p7, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iput-object p8, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueFloat:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueFloat:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startValueInt:I

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValueInt:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final getEndProgress()F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v2, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-nez v2, :cond_1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    sub-float/2addr v2, v3

    iget v3, v1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    sub-float/2addr v3, v1

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    :cond_2
    :goto_0
    iget p0, p0, Lcom/airbnb/lottie/value/Keyframe;->endProgress:F

    return p0
.end method

.method public final getStartProgress()F
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    iget v2, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    sub-float/2addr v2, v1

    iget v0, v0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    sub-float/2addr v0, v1

    div-float/2addr v2, v0

    iput v2, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    :cond_1
    iget p0, p0, Lcom/airbnb/lottie/value/Keyframe;->startProgress:F

    return p0
.end method

.method public final isStatic()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keyframe{startValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
