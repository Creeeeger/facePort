.class public final Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDx:F

.field public final mDy:F

.field public final mVx:F

.field public final mVy:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/DistanceClassifier;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    iput p3, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    iput p4, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVx:F

    iput p5, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVy:F

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVx:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p0, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVy:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "{dx=%f, vx=%f, dy=%f, vy=%f}"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
