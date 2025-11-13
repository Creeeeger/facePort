.class public final Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final access$convertToBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/List;
    .locals 12

    sget-object v0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->Companion:Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->Companion:Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v4

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getState()I

    move-result v7

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getStartTimeStamp()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getEndTimeStamp()J

    move-result-wide v10

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;-><init>(IJIJJ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    return-object v0

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method public static aggregate(Ljava/util/List;)Lcom/android/settings/datausage/lib/NetworkUsageData;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_3

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v1, v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->startTimeStamp:J

    :goto_0
    move-wide v4, v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v1, v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->startTimeStamp:J

    cmp-long v3, v4, v1

    if-lez v3, :cond_1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v1, v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->endTimeStamp:J

    :goto_1
    move-wide v6, v1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v1, v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->endTimeStamp:J

    cmp-long v3, v6, v1

    if-gez v3, :cond_3

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    move-wide v8, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v0, v0, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->bytes:J

    add-long/2addr v8, v0

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/datausage/lib/NetworkUsageData;-><init>(JJJ)V

    :goto_3
    return-object p0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static filterTime(Ljava/util/List;JJ)Ljava/util/List;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v3, v2, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->startTimeStamp:J

    cmp-long v3, v3, p1

    if-ltz v3, :cond_0

    iget-wide v2, v2, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->endTimeStamp:J

    cmp-long v2, v2, p3

    if-gtz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
