.class public final synthetic Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    check-cast p2, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    iget-object p0, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    move-wide p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide p0

    :goto_0
    iget-object v2, p2, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v0

    :goto_1
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method
