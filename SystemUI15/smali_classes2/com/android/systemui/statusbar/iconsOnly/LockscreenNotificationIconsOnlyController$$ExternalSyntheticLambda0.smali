.class public final synthetic Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    check-cast p2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object p0, p1, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-wide p0, p0, Landroid/app/Notification;->when:J

    iget-object p2, p2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-wide v0, p2, Landroid/app/Notification;->when:J

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
