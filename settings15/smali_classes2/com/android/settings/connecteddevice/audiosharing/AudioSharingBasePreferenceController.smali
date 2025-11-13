.class public abstract Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSharingBasePreferenceController"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected final mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mPreference:Landroidx/preference/Preference;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public static synthetic $r8$lambda$4DyM6UcKc39XaRpuk0HHECkCs2A(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->lambda$updateVisibility$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HdNMVU5ue1L29rO05kn6LLdnlXw(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->lambda$updateVisibility$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$J24FY8pcjkpDzVvKDw2X6LvTK94(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->lambda$updateVisibility$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object p2, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    :goto_1
    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    return-void
.end method

.method private synthetic lambda$updateVisibility$0()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateVisibility$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateVisibility$2()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const-string v1, "AudioSharingBasePreferenceController"

    if-nez v0, :cond_0

    const-string v0, "Skip updateVisibility, unavailable preference"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;I)V

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->isBluetoothStateOn()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->isBroadcasting()Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-string v5, "updateVisibility, isBtOn = "

    const-string v6, ", isProfileReady = "

    const-string v7, ", isBroadcasting = "

    invoke-static {v5, v0, v6, v2, v7}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v4}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;Z)V

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public isBluetoothStateOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBroadcasting()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onAudioSharingProfilesConnected()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->updateVisibility()V

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    const-string p0, "AudioSharingBasePreferenceController"

    const-string v0, "Skip updateVisibility, null preference"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
