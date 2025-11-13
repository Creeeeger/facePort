.class public final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final length:I

.field public final variable:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->variable:Z

    iput p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;->length:I

    return-void
.end method

.method public static fixed(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;
    .locals 2

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;-><init>(IZ)V

    return-object v0
.end method

.method public static variable(I)Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;
    .locals 2

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser$DataLength;-><init>(IZ)V

    return-object v0
.end method
