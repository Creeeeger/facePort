.class public final Lcom/android/systemui/power/notification/ChargingNotification;
.super Lcom/android/systemui/power/notification/PowerUiNotification;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBatteryLevel:I

.field public mChargingTime:J

.field public mChargingType:I

.field public mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/PowerUiNotification;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dismissNotification()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "charging_state"

    const v3, 0x7f0a0822

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "key_first_charge"

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "key_first_charge_content_added"

    if-eqz v0, :cond_1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "PowerUi.ChargingNotification"

    const-string v4, "First charge has been completed."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
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

    invoke-virtual {p0}, Lcom/android/systemui/power/notification/ChargingNotification;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingType:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v3, 0x7f130379

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-wide v3, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v4}, Lcom/android/systemui/power/PowerUtils;->getFormattedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-static {v2, v4, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/power/notification/ChargingNotification;->getContentText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/power/notification/PowerUiNotification;->getCommonBuilder(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f08085a

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "CHARGING"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.systemui.action.DELETED_CHARGING_NOTI"

    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUtils;->pendingBroadcast(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const-string v3, "PNW.batteryInfo"

    invoke-static {p0, v3}, Lcom/android/systemui/power/PowerUtils;->pendingBroadcast(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string/jumbo v0, "sys"

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final getContentText()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingType:I

    const/16 v1, 0x8

    const-string v2, "\n\n"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f130219

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f130209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-wide v1, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "%d"

    const v5, 0x7f131410

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/systemui/power/PowerUtils;->getFormattedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-static {v0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mBatteryLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/power/BatteryProtectionUtil;->isMaximumProtectionEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "battery_protection_threshold"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "\n"

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/power/BatteryProtectionUtil;->getProtectBatteryValue(Landroid/content/Context;)I

    move-result v1

    const v6, 0x7f130bb2

    if-ne v1, v4, :cond_3

    invoke-static {v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    sget v7, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_3
    invoke-static {v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    sget v2, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-static {v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f130e16

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_6

    const-string v6, "key_first_charge"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v6, "user_setup_complete"

    invoke-static {v1, v6, v3, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    if-eqz v1, :cond_8

    invoke-static {v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    sget v6, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v6, 0x7f130f76

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_first_charge_content_added"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    :goto_4
    iget v1, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_9

    const/4 v2, 0x7

    if-eq v1, v2, :cond_9

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    :cond_9
    move v3, v4

    :cond_a
    if-eqz v3, :cond_b

    invoke-static {v0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f13158a

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v0, 0x7f13037c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v0, 0x7f130189

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v0, 0x7f130379

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v0, 0x7f13037a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v0, 0x7f13020b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v0, 0x7f13021a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_CHN:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v0, 0x7f130378

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v0, 0x7f13037e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const v0, 0x7f130384

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x7f130381

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f13037f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_CHN:Z

    if-eqz v0, :cond_3

    const v0, 0x7f130377

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const v0, 0x7f13037d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V
    .locals 2

    iget-wide v0, p1, Lcom/android/systemui/power/SecBatterySnapshot;->chargingTime:J

    iput-wide v0, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingTime:J

    iget v0, p1, Lcom/android/systemui/power/SecBatterySnapshot;->chargingType:I

    iput v0, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingType:I

    iget p1, p1, Lcom/android/systemui/power/SecBatterySnapshot;->batteryLevel:I

    iput p1, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mBatteryLevel:I

    iget-object p1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    const-string v0, "charging_shared_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final showNotification()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/power/notification/ChargingNotification;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/power/notification/ChargingNotification;->mChargingType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/power/BatteryProtectionUtil;->isMaximumProtectionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/power/notification/ChargingNotification;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {p0}, Lcom/android/systemui/power/notification/ChargingNotification;->getContentText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "charging_state"

    const v3, 0x7f0a0822

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method
