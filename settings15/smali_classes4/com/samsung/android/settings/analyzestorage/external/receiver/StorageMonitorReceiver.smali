.class public Lcom/samsung/android/settings/analyzestorage/external/receiver/StorageMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "StorageMonitorReceiver"

    if-eqz v1, :cond_0

    const-string/jumbo p0, "onReceive() ] action is NULL."

    invoke-static {v2, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace(I)J

    move-result-wide v3

    const-wide/32 v5, 0x40000000

    div-long/2addr v3, v5

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSize(I)J

    move-result-wide v7

    div-long/2addr v7, v5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive() ] action : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", freeSpace (GB) : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", totalSize (GiB) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/samsung/android/settings/analyzestorage/presenter/feature/Features$Knox;->isKnox:Z

    if-nez v3, :cond_6

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AfwManager;->isAFWBYOD:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_0
    instance-of v5, v4, Landroid/os/UserManager;

    if-eqz v5, :cond_2

    move-object v3, v4

    check-cast v3, Landroid/os/UserManager;

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v5, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/samsung/android/settings/analyzestorage/presenter/feature/Features$Knox;->isKnox:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, p0, :cond_3

    move v3, p0

    goto :goto_2

    :goto_1
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_3
    move v3, v0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AfwManager;->isAFWBYOD:Ljava/lang/Boolean;

    :cond_4
    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AfwManager;->isAFWBYOD:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    if-nez v3, :cond_6

    move v3, p0

    goto :goto_4

    :cond_6
    move v3, v0

    :goto_4
    if-nez v3, :cond_7

    const-string p0, "Current mode doesn\'t support Get More Space."

    invoke-static {v2, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x66

    const-string v4, "StorageManager"

    const/4 v5, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v6, "com.samsung.intent.action.DEVICE_STORAGE_CAUTION_ON"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x7

    goto :goto_5

    :sswitch_1
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v5, 0x6

    goto :goto_5

    :sswitch_2
    const-string v6, "com.samsung.intent.action.DEVICE_STORAGE_WARNING_ON"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v5, 0x5

    goto :goto_5

    :sswitch_3
    const-string v6, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v5, 0x4

    goto :goto_5

    :sswitch_4
    const-string v6, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_5

    :cond_c
    const/4 v5, 0x3

    goto :goto_5

    :sswitch_5
    const-string v6, "com.sec.android.app.myfiles.INTERNAL_STORAGE_LOW"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_5

    :cond_d
    const/4 v5, 0x2

    goto :goto_5

    :sswitch_6
    const-string v6, "com.sec.android.app.myfiles.INTERNAL_STORAGE_OK"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_5

    :cond_e
    move v5, p0

    goto :goto_5

    :sswitch_7
    const-string v6, "com.samsung.intent.action.DEVICE_STORAGE_WARNING_OFF"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_5

    :cond_f
    move v5, v0

    :goto_5
    packed-switch v5, :pswitch_data_0

    const-string/jumbo p0, "onReceive() ] Unsupported action type"

    invoke-static {v2, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_0
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string/jumbo v1, "tips_notification"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_12

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.app.tips"

    const-string v3, "com.samsung.android.app.tips.TipsIntentService"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "tips_extras"

    const/16 v3, 0x8

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "tips_extras2"

    const-string v3, "MYFI_0003"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x7f1403f4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tips_extras3"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x7f1403f5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tips_extras4"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string p2, "NotificationMgr"

    const-string/jumbo v2, "triggerTipsNotification() ] Request Done."

    invoke-static {p2, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_8

    :pswitch_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->needOnGoingNotification(Landroid/content/Context;)V

    goto :goto_8

    :pswitch_2
    iget-object p0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const p0, 0x7f1403fc

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_10

    const p2, 0x7f1403fb

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_10
    const p2, 0x7f1403fa

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-virtual {v1, p1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->createStorageNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_3
    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/preference/PreferenceUtils;->setExtremelyFullCondition(Landroid/content/Context;Z)V

    iget-object p0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const p0, 0x7f1403f8

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_11

    const p2, 0x7f1403f7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    :cond_11
    const p2, 0x7f1403f6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_7
    invoke-virtual {v1, p1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->createStorageNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_4
    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/preference/PreferenceUtils;->setExtremelyFullCondition(Landroid/content/Context;Z)V

    iget-object p0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_8

    :pswitch_5
    iget-object p0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_12
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5791111a -> :sswitch_7
        -0x4cb2f877 -> :sswitch_6
        -0x49ac20d9 -> :sswitch_5
        -0x46671f94 -> :sswitch_4
        -0x2b8fb65c -> :sswitch_3
        -0x13574298 -> :sswitch_2
        0x2f94f923 -> :sswitch_1
        0x4c061739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
