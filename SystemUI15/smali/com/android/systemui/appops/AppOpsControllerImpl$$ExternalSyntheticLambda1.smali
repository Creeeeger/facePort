.class public final synthetic Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/appops/AppOpsControllerImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v8, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$1:Z

    if-eqz p0, :cond_7

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOpStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    invoke-virtual {v9}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/appops/AppOpsControllerImpl;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    invoke-virtual {p0, v0, v8}, Landroid/app/AppOpsManager;->startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0, v8}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Lcom/android/systemui/appops/AppOpsControllerImpl$1;

    iget-object v1, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_6

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    iput-boolean v0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v0, 0x2

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p0

    iput-boolean p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    new-instance v0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, v8}, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    invoke-virtual {p0, v8, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    goto :goto_3

    :cond_7
    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v8}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v8}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Lcom/android/systemui/appops/AppOpsControllerImpl$1;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    iget-object v0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object p0, v8, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
