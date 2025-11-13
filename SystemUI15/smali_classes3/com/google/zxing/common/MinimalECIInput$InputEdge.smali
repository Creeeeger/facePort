.class public final Lcom/google/zxing/common/MinimalECIInput$InputEdge;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final c:C

.field public final cachedTotalSize:I

.field public final encoderIndex:I

.field public final previous:Lcom/google/zxing/common/MinimalECIInput$InputEdge;


# direct methods
.method private constructor <init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    if-ne p1, p5, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    move p5, p1

    :goto_0
    iput-char p5, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->c:C

    iput p3, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I

    iput-object p4, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->previous:Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    if-ne p5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object p2, p2, p3

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    :goto_1
    if-nez p4, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    iget p2, p4, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I

    :goto_2
    if-eq p2, p3, :cond_3

    add-int/lit8 p1, p1, 0x3

    :cond_3
    if-eqz p4, :cond_4

    iget p2, p4, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I

    add-int/2addr p1, p2

    :cond_4
    iput p1, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I

    return-void
.end method

.method public synthetic constructor <init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;-><init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    return-void
.end method
