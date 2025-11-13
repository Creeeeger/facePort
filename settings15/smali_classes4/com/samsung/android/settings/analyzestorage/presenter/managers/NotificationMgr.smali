.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static volatile sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;


# instance fields
.field public mNotification:Landroid/app/Notification;

.field public final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;

    return-object p0
.end method


# virtual methods
.method public final createStorageNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "StorageManager"

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0801c7

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    const v2, 0x7f0801c5

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v3, 0x7f06002c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x14000000

    invoke-static {p1, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f1403f9

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Action$Builder;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string p2, "CATEGORY_STATUS"

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotification:Landroid/app/Notification;

    const p2, 0x7f1403e6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/app/NotificationChannel;

    const/4 p3, 0x3

    invoke-direct {p2, v1, p1, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {p2, v6, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p2, 0x66

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, v1, p2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public final needOnGoingNotification(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSize(I)J

    move-result-wide v1

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace(I)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "needOnGoingNotification() ] totalSize (GiB) = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v6, 0x40000000

    div-long/2addr v1, v6

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , freeSpace (GB) = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v3, v6

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationMgr"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v3, v6

    if-gtz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "needOnGoingNotification() ] Free space is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v0, 0x100000

    div-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " MiB. Storage Low Notification can show up."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.myfiles.INTERNAL_STORAGE_LOW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.settings.analyzestorage.external.receiver.StorageMonitorReceiver"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo p0, "triggerInternalStorageLowIntent() ] Request Done."

    invoke-static {v2, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/preference/PreferenceUtils;->setExtremelyFullCondition(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/preference/PreferenceUtils;->setExtremelyFullCondition(Landroid/content/Context;Z)V

    const v0, 0x7f1403e6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageManager"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->updateChannelByID(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final updateChannelByID(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 p1, 0x0

    sget-object p2, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method
