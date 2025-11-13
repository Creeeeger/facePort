.class public final Lcom/android/settings/applications/ProcStatsData$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    cmpg-double p0, v0, v2

    const/4 v4, 0x1

    if-gez p0, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double p0, v0, v2

    const/4 v0, -0x1

    if-lez p0, :cond_1

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_1
    iget-wide p0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v1, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    cmp-long p0, p0, v1

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_1
    return v4
.end method
