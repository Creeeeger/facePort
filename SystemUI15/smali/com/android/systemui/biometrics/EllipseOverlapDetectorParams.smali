.class public final Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final minOverlap:F

.field public final stepSize:I

.field public final targetSize:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->minOverlap:F

    iput p2, p0, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->targetSize:F

    iput p3, p0, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->stepSize:I

    return-void
.end method
