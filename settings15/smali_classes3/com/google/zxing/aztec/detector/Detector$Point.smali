.class public final Lcom/google/zxing/aztec/detector/Detector$Point;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iput p2, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    return-void
.end method


# virtual methods
.method public final toResultPoint()Lcom/google/zxing/ResultPoint;
    .locals 2

    new-instance v0, Lcom/google/zxing/ResultPoint;

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float p0, p0

    invoke-direct {v0, v1, p0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    const/16 v1, 0x3e

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
