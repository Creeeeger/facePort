.class public Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public mDevice:Landroid/bluetooth/BluetoothDevice;

.field public mDeviceAddress:Ljava/lang/String;

.field public mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mModelPreference:Landroidx/preference/Preference;

.field public final mReceiver:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;

.field public mReceiverRegistered:Z

.field public mSerialPreference:Landroidx/preference/Preference;

.field public mSwInfoPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    new-instance v0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;-><init>(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiver:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BluetoothAboutFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f1

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170157

    return p0
.end method

.method public final initPreference$2$1()V
    .locals 10

    const-string v0, " : "

    const-string v1, "BluetoothAboutFragment"

    const-string/jumbo v2, "serial data = "

    const-string/jumbo v3, "model data = "

    const-string/jumbo v4, "version data = "

    const-string v5, "key_pref_sw_information"

    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mSwInfoPreference:Landroidx/preference/Preference;

    const-string v5, "key_pref_serial"

    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mSerialPreference:Landroidx/preference/Preference;

    const-string v5, "key_pref_model"

    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mModelPreference:Landroidx/preference/Preference;

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v6, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BINARY_VERSION_STR:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v6}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    new-array v8, v6, [B

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mSwInfoPreference:Landroidx/preference/Preference;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v5, Lcom/samsung/android/bluetooth/SmepTag;->STATE_MODEL_STR:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v4

    array-length v5, v4

    sub-int/2addr v5, v7

    new-array v6, v5, [B

    invoke-static {v4, v7, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mModelPreference:Landroidx/preference/Preference;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Lcom/samsung/android/bluetooth/SmepTag;->CUSTOM_SERIAL:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v4}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v3

    array-length v4, v3

    sub-int/2addr v4, v7

    new-array v5, v4, [B

    invoke-static {v3, v7, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f142177

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f142178

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mSerialPreference:Landroidx/preference/Preference;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "initPreference:  can\'t get metadata"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x1

    const-string v2, "BluetoothAboutFragment"

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

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDeviceAddress:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v0, "Activity started without a remote bluetooth device is not ready"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAttach() CachedDevice is null. address = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v1, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move v1, v0

    :goto_3
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_4
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiver:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiver:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p0, "BluetoothAboutFragment"

    const-string/jumbo p1, "onPreferenceChange :: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p0, "BluetoothAboutFragment"

    const-string/jumbo p1, "onPreferenceClick :: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    const-string v0, "BluetoothAboutFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    const-string v1, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    const-string v2, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    invoke-static {v1, v2}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiver:Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "onResume: disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->initPreference$2$1()V

    :goto_0
    return-void
.end method
