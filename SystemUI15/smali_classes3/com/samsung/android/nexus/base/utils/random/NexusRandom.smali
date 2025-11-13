.class public final Lcom/samsung/android/nexus/base/utils/random/NexusRandom;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static seedUniquifier:J


# instance fields
.field public seed:J


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-wide v0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seedUniquifier:J

    const-wide v2, 0x285d320ad33fdb5L

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seedUniquifier:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x5deece66dL

    xor-long/2addr p1, v0

    const-wide v0, 0xffffffffffffL

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    return-void
.end method
