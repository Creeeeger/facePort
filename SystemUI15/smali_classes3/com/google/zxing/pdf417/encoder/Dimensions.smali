.class public final Lcom/google/zxing/pdf417/encoder/Dimensions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final maxCols:I

.field public final maxRows:I

.field public final minCols:I

.field public final minRows:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->minCols:I

    iput p2, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxCols:I

    iput p3, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->minRows:I

    iput p4, p0, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxRows:I

    return-void
.end method
