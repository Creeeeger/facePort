.class public final Lcom/android/settings/applications/ProcessStatsDetail$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/settings/applications/ProcStatsEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide p0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iget-wide v0, p2, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    cmpg-double p2, p0, v0

    if-gez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    cmpl-double p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
