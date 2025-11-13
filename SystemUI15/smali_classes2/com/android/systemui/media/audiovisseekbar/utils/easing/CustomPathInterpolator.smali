.class public final Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;
.super Landroid/graphics/Path;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public pathLegth:F

.field public pathMeasure:Landroid/graphics/PathMeasure;

.field public final point:[F

.field public final pointCount:I

.field public final samplingPoints:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pointCount:I

    new-array v2, v0, [Landroid/graphics/PointF;

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final updatePath()V
    .locals 8

    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathLegth:F

    iput-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathMeasure:Landroid/graphics/PathMeasure;

    iget v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pointCount:I

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-float v3, v2

    iget v4, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pointCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathMeasure:Landroid/graphics/PathMeasure;

    iget v5, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->pathLegth:F

    mul-float/2addr v5, v3

    iget-object v3, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v3, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->samplingPoints:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/systemui/media/audiovisseekbar/utils/easing/CustomPathInterpolator;->point:[F

    aget v6, v5, v1

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
