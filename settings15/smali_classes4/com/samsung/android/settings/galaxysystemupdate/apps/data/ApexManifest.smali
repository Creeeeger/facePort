.class public final Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public queue_:Ljava/util/Queue;

.field public version_:J


# virtual methods
.method public final getVersion()J
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->version_:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/16 v4, 0x80

    const/4 v5, 0x0

    const-string v6, "ApexManifest"

    const/4 v7, 0x2

    if-ne v1, v7, :cond_4

    if-eqz v0, :cond_1

    const-string v0, "Field 2 is not varint type"

    invoke-static {v6, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v5

    int-to-long v6, v3

    add-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x7

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    :cond_3
    move-wide v2, v0

    :goto_1
    iput-wide v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->version_:J

    return-wide v2

    :cond_4
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    if-eq v0, v7, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const-string v0, "Wire type is wrong"

    invoke-static {v6, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_7
    const/16 v0, 0x8

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_9

    goto :goto_2

    :cond_9
    move v0, v5

    :goto_3
    if-ge v5, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexManifest;->queue_:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    return-wide v2
.end method
