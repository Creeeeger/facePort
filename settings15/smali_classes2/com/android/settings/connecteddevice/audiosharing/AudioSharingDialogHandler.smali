.class public final Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field public final mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field final mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHostFragment:Landroidx/fragment/app/Fragment;

.field public final mLocalBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public mTargetSinks:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mTargetSinks:Ljava/util/List;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mHostFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mLocalBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    :cond_1
    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCachedBluetoothDeviceFromDialog(Landroidx/fragment/app/Fragment;)V
    .locals 1

    instance-of v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingJoinDialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingStopDialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDisconnectDialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final closeOpeningDialogsForLeaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mHostFragment:Landroidx/fragment/app/Fragment;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->getCachedBluetoothDeviceFromDialog(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final closeOpeningDialogsOtherThan(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mHostFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remove staled opening dialog "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioSharingDialogHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;Landroidx/fragment/app/DialogFragment;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final handleDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V
    .locals 14

    move-object v7, p0

    move-object v3, p1

    move/from16 v0, p2

    iget-object v1, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils$$ExternalSyntheticLambda1;

    invoke-direct {v9, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    const/16 v9, 0x2eb

    iget-object v10, v7, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mLocalBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v11, "AudioSharingDialogHandler"

    if-nez v8, :cond_3

    const-string v2, "Handle non LE audio device connected, device = "

    invoke-static {v2, v1, v11}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    invoke-static {v10}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->fetchConnectedDevicesByGroupId(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10, v1, v5}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->buildOrderedConnectedLeadAudioSharingDeviceItem(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v2

    new-instance v5, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v6, 0x802

    invoke-static {v0, v9, v6, v1, v4}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->buildAudioSharingDialogEventData(ZIIII)[Landroid/util/Pair;

    move-result-object v6

    new-instance v8, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;

    const/4 v9, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, v5

    move-object v5, v6

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;Ljava/util/List;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/Object;[Landroid/util/Pair;I)V

    iget-object v0, v7, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()V

    :cond_2
    const-string v0, "Ignore onProfileConnectionStateChanged for non LE audio without sharing session"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "Handle LE audio device connected, device = "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->fetchConnectedDevicesByGroupId(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/Map;

    move-result-object v1

    const/4 v8, 0x2

    if-eqz v6, :cond_6

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v1

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v12, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda2;

    invoke-direct {v12, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;)V

    invoke-interface {v6, v12}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Automatically add another device within the same group to the sharing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    iget-object v1, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getLatestBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    goto/16 :goto_2

    :cond_4
    invoke-static {v10, v1, v5}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->buildOrderedConnectedLeadAudioSharingDeviceItem(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_5

    new-instance v4, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x803

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v0, v9, v1, v6, v5}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->buildAudioSharingDialogEventData(ZIIII)[Landroid/util/Pair;

    move-result-object v5

    new-instance v8, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;Ljava/util/List;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/Object;[Landroid/util/Pair;I)V

    iget-object v0, v7, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_5
    new-instance v4, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x826

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v0, v9, v1, v6, v5}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->buildAudioSharingDialogEventData(ZIIII)[Landroid/util/Pair;

    move-result-object v5

    new-instance v8, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;Ljava/util/List;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/Object;[Landroid/util/Pair;I)V

    iget-object v0, v7, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v6}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v10

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v11

    if-ne v10, v11, :cond_7

    goto :goto_1

    :cond_7
    new-instance v10, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v12

    sget-boolean v13, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const/16 v13, 0x16

    invoke-virtual {v6, v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v6

    invoke-direct {v10, v11, v12, v6}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_9

    new-instance v5, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$2;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x801

    invoke-static {v0, v9, v1, v4, v8}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->buildAudioSharingDialogEventData(ZIIII)[Landroid/util/Pair;

    move-result-object v6

    new-instance v8, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;

    const/4 v9, 0x3

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, v5

    move-object v5, v6

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;Ljava/util/List;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/Object;[Landroid/util/Pair;I)V

    iget-object v0, v7, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()V

    :cond_a
    :goto_2
    return-void
.end method

.method public final registerCallbacks(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    :cond_0
    return-void
.end method

.method public final unregisterCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    :cond_0
    return-void
.end method
