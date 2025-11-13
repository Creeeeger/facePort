.class public final Lcom/android/systemui/power/notification/OptimizationChargingNotification;
.super Lcom/android/systemui/power/notification/PowerUiNotification;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFinishTime:Ljava/lang/String;


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

    const-string/jumbo v2, "tag_optimization_charging_during_sleep"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final getBuilder()Landroid/app/Notification$Builder;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f13037b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->CHARGING:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f130210

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/power/notification/OptimizationChargingNotification;->mFinishTime:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f130d75

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/power/notification/PowerUiNotification;->getCommonBuilder(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f081289

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "CHARGING"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const-string v4, "PNW.batteryInfo"

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUtils;->pendingBroadcast(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "sys"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f130d74

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    invoke-static {p0, v5, v3, v6, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V
    .locals 0

    iget-object p1, p1, Lcom/android/systemui/power/SecBatterySnapshot;->optimizationChargingFinishTime:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/power/notification/OptimizationChargingNotification;->mFinishTime:Ljava/lang/String;

    return-void
.end method

.method public final showNotification()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/power/notification/OptimizationChargingNotification;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f130210

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    iget-object v2, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/power/notification/OptimizationChargingNotification;->mFinishTime:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f130d75

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v2, "tag_optimization_charging_during_sleep"

    const v3, 0x7f0a0822

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method
