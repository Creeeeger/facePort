.class public final Lcom/android/systemui/power/notification/LowBatteryNotification;
.super Lcom/android/systemui/power/notification/PowerUiNotification;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBatteryLevel:I

.field public mCurrentBatteryMode:I

.field public final mIsPowerSavingSupported:Z

.field public final mOpenBatterySettings:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/PowerUiNotification;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "ro.csc.sales_code"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "U06"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mIsPowerSavingSupported:Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1c800000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mOpenBatterySettings:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final dismissNotification()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x3

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "low_battery"

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final getBuilder()Landroid/app/Notification$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mBatteryLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f130205

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mCurrentBatteryMode:I

    iget-boolean v2, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mIsPowerSavingSupported:Z

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f130202

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f130200

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f130203

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f130201

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->SEC_LOW_BATTERY:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui/power/notification/PowerUiNotification;->getCommonBuilder(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const-string v4, "PNW.dismissedWarning"

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUtils;->pendingBroadcast(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mOpenBatterySettings:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mCurrentBatteryMode:I

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const-string v2, "PNW.powerMode"

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerUtils;->pendingBroadcast(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_3
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->CHN_SMART_MANAGER:Z

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    const p0, 0x7f080a8c

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f1301ff

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "android.substName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    const p0, 0x7f081287

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_1
    return-object v0
.end method

.method public final setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V
    .locals 1

    iget v0, p1, Lcom/android/systemui/power/SecBatterySnapshot;->batteryLevel:I

    iput v0, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mBatteryLevel:I

    iget p1, p1, Lcom/android/systemui/power/SecBatterySnapshot;->currentBatteryMode:I

    iput p1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mCurrentBatteryMode:I

    return-void
.end method

.method public final showNotification()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/power/notification/LowBatteryNotification;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "low_battery"

    invoke-virtual {p0, v3, v1, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method
