.class public final Lcom/android/systemui/biometrics/udfps/BoundingBoxOverlapDetector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/udfps/OverlapDetector;


# instance fields
.field public final targetSize:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/biometrics/udfps/BoundingBoxOverlapDetector;->targetSize:F

    return-void
.end method


# virtual methods
.method public final isGoodOverlap(Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p0, p0, Lcom/android/systemui/biometrics/udfps/BoundingBoxOverlapDetector;->targetSize:F

    mul-float/2addr p3, p0

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p3

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p3

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->isWithinBounds(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method
