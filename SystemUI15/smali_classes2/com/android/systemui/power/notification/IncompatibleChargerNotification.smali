.class public final Lcom/android/systemui/power/notification/IncompatibleChargerNotification;
.super Lcom/android/systemui/power/notification/PowerUiNotification;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/PowerUiNotification;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dismissNotification()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v0, 0x7f0a0822

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "incompatible_charger_state"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final getBuilder()Landroid/app/Notification$Builder;
    .locals 4

    sget-object v0, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f13079b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f13079a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/power/notification/PowerUiNotification;->getCommonBuilder(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f081498

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "sys"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    return-object v0
.end method

.method public final setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V
    .locals 0

    return-void
.end method

.method public final showNotification()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/power/notification/IncompatibleChargerNotification;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    const v2, 0x1020503

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0a0822

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "incompatible_charger_state"

    invoke-virtual {p0, v3, v1, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method
