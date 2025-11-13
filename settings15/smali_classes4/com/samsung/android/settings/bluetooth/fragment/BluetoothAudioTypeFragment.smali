.class public Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# instance fields
.field public mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public mDevice:Landroid/bluetooth/BluetoothDevice;

.field public mDeviceAddress:Ljava/lang/String;

.field public mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mScreenId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BluetoothAudioTypeFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f1

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17015a

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x1

    const-string v2, "BluetoothAudioTypeFragment"

    if-nez v0, :cond_0

    const-string v0, "Activity started without bluetooth is not ready"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "device_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDeviceAddress:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v0, "Activity started without a remote bluetooth device is not ready"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAttach() CachedDevice is null. address = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v1, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move v1, v0

    :goto_3
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "sec_bluetooth_audio_type_headphones"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const-string/jumbo p1, "sec_bluetooth_audio_type_speaker"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const-string/jumbo p1, "sec_bluetooth_audio_type_others"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const-string/jumbo p1, "sec_high_refresh_rate_preview"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0d3f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1421a7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "%1$s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v3, "%2$s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x4

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spannable;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment$1;-><init>(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;)V

    const/16 v2, 0x21

    invoke-interface {p1, v1, v0, v3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f141fc6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public final onDeviceAttributesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->updateStatus()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_0
    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140ed3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move p1, v4

    goto :goto_1

    :sswitch_0
    const-string/jumbo v5, "sec_bluetooth_audio_type_speaker"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "sec_bluetooth_audio_type_others"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "sec_bluetooth_audio_type_headphones"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    packed-switch p1, :pswitch_data_0

    move v0, v4

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->semSetAudioType(I)Z

    move v0, v3

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->semSetAudioType(I)Z

    move v0, v2

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->semSetAudioType(I)Z

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->updateStatus()V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mScreenId:Ljava/lang/String;

    int-to-long v2, v0

    const/4 p1, 0x0

    invoke-static {v2, v3, p0, v1, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

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

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    const-string v0, "BluetoothAudioTypeFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->updateStatus()V

    return-void
.end method

.method public final updateStatus()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioHeadphones:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioSpeaker:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;->mRadioOthers:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method
