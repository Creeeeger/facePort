.class public final Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

.field public final finished:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    return-void
.end method
