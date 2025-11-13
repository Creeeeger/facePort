.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecBluetoothDetailsHearingAidController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;


# instance fields
.field private dualVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

.field private leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

.field protected final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field protected final mContext:Landroid/content/Context;

.field protected final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mHearingAidContainer:Landroidx/preference/PreferenceGroup;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

.field private mScreenId:Ljava/lang/String;

.field private rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

.field private switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

.field private switchLeft:Landroidx/preference/SwitchPreferenceCompat;

.field private switchRight:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public static synthetic $r8$lambda$WG7vC49EqV8IxNmkCwyziRSfJvU(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->lambda$initProxy$0(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 91
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p4, :cond_0

    .line 94
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private initProxy(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SecBluetoothHearingAidController"

    .line 226
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 229
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 230
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 238
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez p1, :cond_1

    const-string p0, "profileManager is not supported"

    .line 245
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 249
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez p1, :cond_2

    const-string p0, "Hearing aid profile is not supported"

    .line 252
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error getting LocalBluetoothManager."

    .line 233
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private initSwitchState()V
    .locals 6

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchLeft:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchRight:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchLeft:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchRight:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_hearing_aid_stream_left"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "bluetooth_hearing_aid_stream_right"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    .line 202
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_hearing_aid_gain_dual_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v1, v3

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchLeft:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchRight:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 206
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private initVolumeController()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->setVolumeKey(I)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->setCallBack(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->setVolumeKey(I)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->setCallBack(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->dualVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->setVolumeKey(I)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->dualVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;->setCallBack(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference$CallBack;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->dualVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private static synthetic lambda$initProxy$0(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->init(Landroidx/preference/PreferenceScreen;)V

    .line 101
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getGain(I)I
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

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 287
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    add-int/2addr p1, p0

    .line 288
    div-int/2addr p1, v2

    return p1

    .line 283
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 280
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_hearing_aid"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->initProxy(Landroid/content/Context;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mScreenId:Ljava/lang/String;

    const-string v0, "bluetooth_hearing_aid"

    .line 134
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mHearingAidContainer:Landroidx/preference/PreferenceGroup;

    const-string v0, "bluetooth_switch_hearing_aid_left"

    .line 136
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchLeft:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "bluetooth_switch_hearing_aid_right"

    .line 137
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchRight:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "bluetooth_switch_hearing_aid_adjust"

    .line 138
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->switchAdjust:Landroidx/preference/SwitchPreferenceCompat;

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->initSwitchState()V

    const-string v0, "bluetooth_volume_left"

    .line 141
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    const-string v0, "bluetooth_volume_right"

    .line 142
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    const-string v0, "bluetooth_volume_dual"

    .line 143
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->dualVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->initVolumeController()V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 106
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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 154
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 156
    instance-of v0, p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 157
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange :: key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecBluetoothHearingAidController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v3, v0, 0x1

    .line 163
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "bluetooth_switch_hearing_aid_left"

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->event_device_profiles_setting_hearing_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v4, "bluetooth_hearing_aid_stream_left"

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p2, :cond_3

    xor-int/2addr v0, v3

    .line 168
    invoke-virtual {p2, v1, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setStreamEnable(IZ)V

    goto :goto_0

    :cond_0
    const-string p1, "bluetooth_switch_hearing_aid_right"

    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->event_device_profiles_setting_hearing_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v4, "bluetooth_hearing_aid_stream_right"

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p2, :cond_3

    xor-int/2addr v0, v3

    .line 174
    invoke-virtual {p2, v3, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setStreamEnable(IZ)V

    goto :goto_0

    :cond_1
    const-string p1, "bluetooth_switch_hearing_aid_adjust"

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->event_device_profiles_setting_hearing_adjust:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v4, "bluetooth_hearing_aid_gain_dual_mode"

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->dualVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 181
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->leftVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 182
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->rightVolumeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothHearingAidVolumePreference;

    xor-int/2addr v0, v3

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 185
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mScreenId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public setIndependentVolume(II)V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setIndependentGain(II)V

    .line 270
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mProfileProxy:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-virtual {p0, p2, v2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setIndependentGain(II)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v0, p2, v2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setIndependentGain(II)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setIndependentGain(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
