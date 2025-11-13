.class public final Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    rsub-int/lit8 p3, p3, 0xd

    if-lez p3, :cond_0

    long-to-double p1, p1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double p3, p3

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    mul-double/2addr p3, p1

    double-to-long p1, p3

    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->timestamp:J

    return-void
.end method
