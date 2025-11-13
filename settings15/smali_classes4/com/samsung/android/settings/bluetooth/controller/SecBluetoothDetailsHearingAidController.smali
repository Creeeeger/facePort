.class public final Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public dualVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

.field public leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

.field public final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final mContext:Landroid/content/Context;

.field public final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field public mHearingAidContainer:Landroidx/preference/PreferenceCategory;

.field public mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

.field public mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

.field public mScreenId:Ljava/lang/String;

.field public rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

.field public switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

.field public switchLeft:Landroidx/preference/SwitchPreferenceCompat;

.field public switchRight:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    const-string v1, "SecBluetoothHearingAidController"

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, "Bluetooth is not supported on this device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "profileManager is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez v0, :cond_2

    const-string v0, "Hearing aid profile is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-nez v0, :cond_3

    const-string v0, " LeAudio profile is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error getting LocalBluetoothManager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const v1, 0x7f141fc6

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mScreenId:Ljava/lang/String;

    const-string v0, "bluetooth_hearing_aid"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mHearingAidContainer:Landroidx/preference/PreferenceCategory;

    const-string v0, "bluetooth_switch_hearing_aid_left"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchLeft:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "bluetooth_switch_hearing_aid_right"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchRight:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "bluetooth_switch_hearing_aid_adjust"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchLeft:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/Preference;->setPersistent()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchRight:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/Preference;->setPersistent()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/Preference;->setPersistent()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchLeft:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchRight:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_hearing_aid_stream_left"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_hearing_aid_stream_right"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_hearing_aid_gain_dual_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchLeft:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v5, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchRight:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v0, "bluetooth_volume_left"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    const-string v0, "bluetooth_volume_right"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    const-string v0, "bluetooth_volume_dual"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->dualVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iput v1, v3, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    iput-object p0, v3, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iput v2, v1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    iput-object p0, v1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mVolumeKey:I

    iput-object p0, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->mCallBack:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getGain(I)I
    .locals 4

    const-string v0, "bluetooth_hearing_aid_gain_left"

    const/16 v1, 0x64

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    const-string v3, "bluetooth_hearing_aid_gain_right"

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    add-int/2addr p0, p1

    div-int/2addr p0, v2

    return p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_hearing_aid"

    return-object p0
.end method

.method public final isAnyLeDeviceConnected(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_3

    instance-of v1, p1, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    instance-of v0, p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPreferenceChange :: key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecBluetoothHearingAidController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "bluetooth_switch_hearing_aid_left"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-eqz p1, :cond_1

    const p1, 0x7f140eda

    invoke-static {v3, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "bluetooth_hearing_aid_stream_left"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1, v2}, Landroid/bluetooth/BluetoothHearingAid;->setStreamEnable(IZ)V

    goto :goto_0

    :cond_1
    const-string p1, "bluetooth_switch_hearing_aid_right"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f140edb

    invoke-static {v3, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "bluetooth_hearing_aid_stream_right"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/bluetooth/BluetoothHearingAid;->setStreamEnable(IZ)V

    goto :goto_0

    :cond_3
    const-string p1, "bluetooth_switch_hearing_aid_adjust"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f140ed9

    invoke-static {v3, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "bluetooth_hearing_aid_gain_dual_mode"

    invoke-static {p2, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->dualVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_4
    const-string p1, ""

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mScreenId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->isAnyLeDeviceConnected(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mHearingAidContainer:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
