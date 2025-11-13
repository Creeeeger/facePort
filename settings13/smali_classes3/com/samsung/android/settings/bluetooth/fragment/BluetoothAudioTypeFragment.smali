.class public Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothAudioTypeFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field private mLinkTextView:Landroid/widget/TextView;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mScreenId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    .line 64
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 209
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method private initPreference()V
    .locals 2

    const-string v0, "sec_bluetooth_audio_type_headphones"

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 190
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    const-string v0, "sec_bluetooth_audio_type_speaker"

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 193
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    const-string v0, "sec_bluetooth_audio_type_others"

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 196
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    const-string v0, "sec_high_refresh_rate_preview"

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 199
    sget v1, Lcom/android/settings/R$id;->sec_bluetooth_link:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mLinkTextView:Landroid/widget/TextView;

    .line 200
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_audio_type_link:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->linkify(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private linkify(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 4

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p2, "%1$s"

    .line 240
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 242
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_0
    add-int/lit8 v3, p2, 0x4

    .line 245
    invoke-virtual {v0, p2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "%2$s"

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 248
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_1
    add-int/lit8 v1, v3, 0x4

    .line 251
    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 254
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 255
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spannable;

    .line 256
    new-instance v0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;-><init>(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;)V

    const/16 p0, 0x21

    .line 274
    invoke-interface {p1, v0, p2, v3, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateStatus()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 231
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 225
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 220
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BluetoothAudioTypeFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 69
    sget p0, Lcom/android/settings/R$xml;->sec_bluetooth_audio_type_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 104
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x1

    const-string v2, "BluetoothAudioTypeFragment"

    if-nez v0, :cond_0

    const-string v0, "Activity started without bluetooth is not ready"

    .line 107
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "device_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDeviceAddress:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v0, "Activity started without a remote bluetooth device is not ready"

    .line 113
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    .line 116
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 119
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttach() CachedDevice is null. address = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move v1, v0

    .line 127
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->initPreference()V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 158
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->updateStatus()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 6

    .line 163
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_device_profiles_setting_audio_type_radio_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move p1, v3

    goto :goto_1

    :sswitch_0
    const-string v1, "sec_bluetooth_audio_type_speaker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "sec_bluetooth_audio_type_others"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "sec_bluetooth_audio_type_headphones"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_1
    packed-switch p1, :pswitch_data_0

    move v2, v3

    goto :goto_2

    .line 173
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->semSetAudioType(I)Z

    move v2, v5

    goto :goto_2

    .line 177
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothDevice;->semSetAudioType(I)Z

    move v2, v4

    goto :goto_2

    .line 169
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothDevice;->semSetAudioType(I)Z

    .line 184
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->updateStatus()V

    .line 185
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mScreenId:Ljava/lang/String;

    int-to-long v1, v2

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x8acac5e -> :sswitch_2
        0x460566e0 -> :sswitch_1
        0x4740cc22 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    const-string v0, "BluetoothAudioTypeFragment"

    const-string v1, "onResume"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->updateStatus()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
