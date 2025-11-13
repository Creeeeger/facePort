.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final byteSegments:Ljava/util/List;

.field public final ecLevel:Ljava/lang/String;

.field public erasures:Ljava/lang/Integer;

.field public errorsCorrected:Ljava/lang/Integer;

.field public numBits:I

.field public other:Ljava/lang/Object;

.field public final rawBytes:[B

.field public final structuredAppendParity:I

.field public final structuredAppendSequenceNumber:I

.field public final symbologyModifier:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    iput-object p2, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    iput-object p4, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    iput p6, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I

    iput p5, p0, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I

    iput p7, p0, Lcom/google/zxing/common/DecoderResult;->symbologyModifier:I

    return-void
.end method
