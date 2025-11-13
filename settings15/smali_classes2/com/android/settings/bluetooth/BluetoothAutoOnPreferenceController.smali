.class public Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field static final PREF_KEY:Ljava/lang/String; = "bluetooth_auto_on_settings_toggle"

.field private static final TAG:Ljava/lang/String; = "BluetoothAutoOnPrefCtlr"


# instance fields
.field private mAutoOnValue:Z

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPreference:Landroidx/preference/TwoStatePreference;


# direct methods
.method public static synthetic $r8$lambda$MGkDNcKBfwjksnrXROG13PguMBk(Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->lambda$onAutoOnStateChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$gnhu35NNBBOyDlUO06i77plAPk4(Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->updateValue()V

    return-void
.end method

.method public static synthetic $r8$lambda$mtIy3gT7UwRdjiLvqWp26-2aQTQ(Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->lambda$onAutoOnStateChanged$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xqauSTXDxX0y9F-eFqnibgW_xzI(Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->lambda$setChecked$2(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mAutoOnValue:Z

    return-void
.end method

.method private synthetic lambda$onAutoOnStateChanged$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAutoOnStateChanged$1(I)V
    .locals 2

    const-string v0, "onAutoOnStateChanged() state: "

    const-string v1, "BluetoothAutoOnPrefCtlr"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->updateValue()V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setChecked$2(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setAutoOnEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BluetoothAutoOnPrefCtlr"

    const-string v0, "Error calling setAutoOnEnabled()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateValue()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isAutoOnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mAutoOnValue:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothAutoOnPrefCtlr"

    const-string v1, "Error calling isAutoOnEnabled()"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 5

    const-string v0, "getAvailabilityStatus() isSupported: "

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x3

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isAutoOnSupported()Z

    move-result v1

    const-string v3, "BluetoothAutoOnPrefCtlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :catch_0
    :cond_2
    return v2
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_auto_on_settings_toggle"

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mAutoOnValue:Z

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onAutoOnStateChanged(I)V
    .locals 1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public bridge synthetic onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothAutoOnPreferenceController;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
