.class public final Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final bits:Lcom/google/zxing/common/BitMatrix;

.field public final points:Ljava/util/List;

.field public final rotation:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    iput-object p2, p0, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->points:Ljava/util/List;

    iput p3, p0, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;->rotation:I

    return-void
.end method
