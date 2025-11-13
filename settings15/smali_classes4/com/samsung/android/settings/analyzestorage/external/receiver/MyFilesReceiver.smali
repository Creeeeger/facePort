.class public final Lcom/samsung/android/settings/analyzestorage/external/receiver/MyFilesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static handleEject(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->getMountInfoByUuid(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;

    move-result-object v0

    const-string v1, "handleEject() ] fsUuid : "

    const-string v2, " , mountInfo : "

    invoke-static {v1, p0, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MyFilesReceiver"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 p0, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-string v4, "MyFilesReceiver"

    if-nez p2, :cond_0

    const-string/jumbo p0, "onReceive() ] IGNORE - intent is null."

    invoke-static {v4, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onReceive() ] action : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-void

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v5, v2

    goto :goto_1

    :sswitch_0
    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, p0

    goto :goto_1

    :sswitch_1
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v5, v0

    goto :goto_1

    :sswitch_2
    const-string v7, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v5, v3

    goto :goto_1

    :sswitch_3
    const-string v7, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move v5, v1

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->sCachedTime:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->TIMEZONE_CHANGED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "time-zone"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    const-string p1, "Intent\'s Extra is null."

    :goto_2
    invoke-static {v4, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_3
    if-ge v1, p1, :cond_11

    sget-object p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->sInstanceMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;

    if-eqz p2, :cond_7

    iget-object v0, p2, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->mListenerMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->notify(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;Ljava/util/Map;)V

    :cond_7
    add-int/2addr v1, v3

    goto :goto_3

    :pswitch_1
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->sCachedTime:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->sCachedSize:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->needOnGoingNotification(Landroid/content/Context;)V

    const p2, 0x7f1403e6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "my_files_channel_operation"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/NotificationMgr;->updateChannelByID(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_2
    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "handleVolumeStateChanged() ] volumeId : "

    const-string v6, " , state : "

    const-string v7, " , fsUuid : "

    invoke-static {v2, v5, v1, v6, v7}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->getUserIdFromVolumeId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->isCloneProfile(I)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "handleCloneStorage() ] invalid info. userId : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , volumeId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->sStorageMountInfoList:Ljava/util/List;

    const-string/jumbo v1, "storage"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->ensureAppCloneStorageInfo(Landroid/os/storage/StorageManager;)V

    if-eq v2, v0, :cond_b

    if-ne v2, p0, :cond_9

    goto :goto_4

    :cond_9
    const/4 p0, 0x7

    if-eq v2, p0, :cond_a

    const/16 p0, 0x8

    if-ne v2, p0, :cond_11

    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->getMyUserId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/preference/PreferenceUtils;->resetPrevMpGenerationForAnalyzeStorage(Landroid/content/Context;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "handleCloneStorage() ] Clone Storage is de-activated. userId : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :goto_4
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "first_entry_after_clone_storage_activated"

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "handleCloneStorage() ] Clone Storage is activated. userId : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const/4 v1, 0x5

    if-ne v2, v1, :cond_d

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/external/receiver/MyFilesReceiver;->handleEject(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->getMountInfoByUuid(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mDomainType:I

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isSd(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->getMyUserId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/preference/PreferenceUtils;->resetPrevMpGenerationForAnalyzeStorage(Landroid/content/Context;I)V

    goto :goto_5

    :cond_d
    if-nez v2, :cond_e

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->updateStorageMountState(Landroid/content/Context;)V

    goto :goto_5

    :cond_e
    if-eq v2, v0, :cond_f

    if-ne v2, p0, :cond_11

    :cond_f
    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->updateStorageMountState(Landroid/content/Context;)V

    const-string p0, "handleMount() ] Call updateShortcutInfoAfterRequested()"

    invoke-static {v4, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_3
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p0, "handleMediaRemovedForSdCard() ] fsUuid is null. So, ignore MEDIA_REMOVED intent for SD card."

    invoke-static {v4, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->updateStorageMountState(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/external/receiver/MyFilesReceiver;->handleEject(Ljava/lang/String;)V

    :cond_11
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6342a1e0 -> :sswitch_3
        -0x54155685 -> :sswitch_2
        -0x122164c -> :sswitch_1
        0x1df32313 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
