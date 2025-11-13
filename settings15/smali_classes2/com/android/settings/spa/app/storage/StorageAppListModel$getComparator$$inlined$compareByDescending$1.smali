.class public final Lcom/android/settings/spa/app/storage/StorageAppListModel$getComparator$$inlined$compareByDescending$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object p0, p2, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p0, Lcom/android/settings/spa/app/storage/AppRecordWithSize;

    iget-wide v0, p0, Lcom/android/settings/spa/app/storage/AppRecordWithSize;->size:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast p1, Lcom/android/settings/spa/app/storage/AppRecordWithSize;

    iget-wide p1, p1, Lcom/android/settings/spa/app/storage/AppRecordWithSize;->size:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
