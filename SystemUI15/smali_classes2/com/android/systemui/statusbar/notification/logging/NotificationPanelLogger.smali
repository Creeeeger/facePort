.class public interface abstract Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static toNotificationProto(Ljava/util/List;)Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;
    .locals 8

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v5, :cond_6

    new-instance v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;-><init>()V

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    iput v7, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->uid:I

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v7

    iput v7, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->instanceId:I

    :cond_1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    iput-boolean v5, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->isGroupSummary:Z

    :cond_2
    iget v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v7, 0x7

    if-eq v4, v7, :cond_5

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    move v5, v2

    goto :goto_1

    :pswitch_0
    const/4 v5, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x4

    goto :goto_1

    :pswitch_2
    const/4 v5, 0x3

    goto :goto_1

    :cond_3
    const/4 v5, 0x6

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    :cond_5
    :goto_1
    iput v5, v6, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;->section:I

    aput-object v6, v1, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;->notifications:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
