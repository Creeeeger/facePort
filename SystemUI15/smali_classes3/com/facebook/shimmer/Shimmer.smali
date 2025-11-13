.class public final Lcom/facebook/shimmer/Shimmer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public alphaShimmer:Z

.field public animationDuration:J

.field public autoStart:Z

.field public baseColor:I

.field public clipToChildren:Z

.field public final colors:[I

.field public direction:I

.field public dropoff:F

.field public fixedHeight:I

.field public fixedWidth:I

.field public heightRatio:F

.field public highlightColor:I

.field public intensity:F

.field public final positions:[F

.field public repeatCount:I

.field public repeatDelay:J

.field public repeatMode:I

.field public shape:I

.field public tilt:F

.field public widthRatio:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/shimmer/Shimmer;->colors:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->direction:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    const v2, 0x4cffffff    # 1.3421772E8f

    iput v2, p0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->shape:I

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->fixedWidth:I

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->fixedHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->widthRatio:F

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->heightRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->tilt:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/shimmer/Shimmer;->clipToChildren:Z

    iput-boolean v0, p0, Lcom/facebook/shimmer/Shimmer;->autoStart:Z

    iput-boolean v0, p0, Lcom/facebook/shimmer/Shimmer;->alphaShimmer:Z

    iput v1, p0, Lcom/facebook/shimmer/Shimmer;->repeatCount:I

    iput v0, p0, Lcom/facebook/shimmer/Shimmer;->repeatMode:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/facebook/shimmer/Shimmer;->animationDuration:J

    return-void
.end method
