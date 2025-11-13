.class public final Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final pos:I

.field public final value:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    iput p1, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return-void
.end method

.method public static parseInt(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;
    .locals 7

    const/4 v0, 0x0

    if-lt p0, p1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    move v3, p0

    :goto_0
    if-ge v3, p1, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2

    const-wide/16 v5, 0xa

    mul-long/2addr v1, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v1, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ne v3, p0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {p0, v3, v1, v2}, Lcom/caverock/androidsvg/IntegerParser;-><init>(IJ)V

    return-object p0
.end method
