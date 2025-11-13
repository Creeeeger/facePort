.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "SecBluetoothDetailsCodecController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mCodecContainer:Landroidx/preference/PreferenceGroup;

.field private mCodecGroupIsRemoved:Z

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 85
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 86
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 87
    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method private createCodecSwitchPreference(Ljava/lang/String;I)Landroidx/preference/SwitchPreferenceCompat;
    .locals 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCodecSwitchPreference :: codec : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsCodecController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->PreferenceThemeOverlay:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 247
    new-instance v1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v1, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 250
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 251
    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 252
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 254
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 255
    sget p1, Lcom/android/settings/R$drawable;->list_ic_sound_accessory_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    sget p2, Lcom/android/settings/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 258
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v1
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result p0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p0, p1

    return p0
.end method

.method private showOrHideCodecGroup()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecGroupIsRemoved:Z

    return-void

    .line 272
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 273
    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecGroupIsRemoved:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecGroupIsRemoved:Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 278
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecGroupIsRemoved:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_codec"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mScreenId:Ljava/lang/String;

    const-string v0, "bluetooth_codec"

    .line 97
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const-string p2, "SecBluetoothDetailsCodecController"

    const-string v0, "prof is null in onPreferenceChange"

    .line 177
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ssc_uhq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x7d0

    const-string v3, "A2DP"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 180
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p2, :cond_1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    xor-int/2addr v6, v4

    invoke-virtual {p2, v0, v6}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setEnableScalableUhqMode(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 183
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 185
    new-instance p2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$1;-><init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;Landroidx/preference/Preference;)V

    .line 201
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    .line 202
    iput v5, p0, Landroid/os/Message;->what:I

    .line 203
    invoke-virtual {p2, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ldac:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 206
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p2, :cond_1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    xor-int/2addr v6, v4

    invoke-virtual {p2, v0, v6}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setEnableLdacMode(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 209
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 211
    new-instance p2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;-><init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;Landroidx/preference/Preference;)V

    .line 227
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    .line 228
    iput v5, p0, Landroid/os/Message;->what:I

    .line 229
    invoke-virtual {p2, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return v4
.end method

.method protected refresh()V
    .locals 9

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    const-string v1, "SecBluetoothDetailsCodecController"

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->showOrHideCodecGroup()V

    const-string p0, "refreshCodecs :: Device is restored. It is not support container"

    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const-string v2, "A2DP"

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_6

    .line 109
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isSupportScalableUhq(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 110
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ssc_uhq:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v5, :cond_1

    .line 112
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getOrdinal()I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->getProfilePreferenceIndex(I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->createCodecSwitchPreference(Ljava/lang/String;I)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v5

    .line 114
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 116
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getScalableUhqEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshCodecs :: isScalableUhqEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v5, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 121
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v6, :cond_3

    .line 125
    sget v0, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ldac_use_summary:I

    goto :goto_0

    .line 127
    :cond_3
    sget v0, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ldac_off_summary:I

    goto :goto_0

    :cond_4
    if-eq v1, v4, :cond_5

    .line 130
    sget v0, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ssc_uhq_not_use_summary:I

    goto :goto_0

    .line 132
    :cond_5
    sget v0, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ldac_dual_audio_summary:I

    .line 135
    :goto_0
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 136
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    :cond_6
    if-eqz v0, :cond_c

    .line 137
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isSupportLdac(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 138
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ldac:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v5, :cond_7

    .line 140
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getOrdinal()I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->getProfilePreferenceIndex(I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->createCodecSwitchPreference(Ljava/lang/String;I)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v5

    .line 142
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 144
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getLdacEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshCodecs :: isLdacEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v5, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 149
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    move v2, v3

    :cond_8
    if-eqz v2, :cond_a

    if-eqz v6, :cond_9

    .line 153
    sget v0, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ldac_use_summary:I

    goto :goto_1

    .line 155
    :cond_9
    sget v0, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ldac_off_summary:I

    goto :goto_1

    :cond_a
    if-eq v1, v4, :cond_b

    .line 158
    sget v0, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ldac_not_use_summary:I

    goto :goto_1

    .line 160
    :cond_b
    sget v0, Lcom/android/settings/R$string;->bluetooth_a2dp_codec_ldac_dual_audio_summary:I

    .line 163
    :goto_1
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 164
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 167
    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->showOrHideCodecGroup()V

    return-void
.end method
