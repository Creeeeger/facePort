.class public Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothAboutFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mModelPreference:Landroidx/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mSerialPreference:Landroidx/preference/Preference;

.field private mSwInfoPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitPreference(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->initPreference()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    .line 56
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    .line 244
    new-instance v0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment$1;-><init>(Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 240
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method private initPreference()V
    .locals 7

    const-string v0, " : "

    const-string v1, "BluetoothAboutFragment"

    const-string v2, "key_pref_sw_information"

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mSwInfoPreference:Landroidx/preference/Preference;

    const-string v2, "key_pref_serial"

    .line 179
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mSerialPreference:Landroidx/preference/Preference;

    const-string v2, "key_pref_model"

    .line 180
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mModelPreference:Landroidx/preference/Preference;

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->STATE_BINARY_VERSION_STR:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v2

    .line 184
    array-length v3, v2

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    new-array v5, v3, [B

    const/4 v6, 0x0

    .line 185
    invoke-static {v2, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mSwInfoPreference:Landroidx/preference/Preference;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->STATE_MODEL_STR:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v2

    .line 191
    array-length v3, v2

    sub-int/2addr v3, v4

    new-array v5, v3, [B

    .line 192
    invoke-static {v2, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mModelPreference:Landroidx/preference/Preference;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->CUSTOM_SERIAL:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v2

    .line 197
    array-length v3, v2

    sub-int/2addr v3, v4

    new-array v5, v3, [B

    .line 198
    invoke-static {v2, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    .line 201
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/android/settings/R$string;->sec_bluetooth_about_l:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_about_r:I

    .line 205
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mSerialPreference:Landroidx/preference/Preference;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serial data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "initPreference:  can\'t get metadata"

    .line 210
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BluetoothAboutFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 61
    sget p0, Lcom/android/settings/R$xml;->sec_bluetooth_about_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 94
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x1

    const-string v2, "BluetoothAboutFragment"

    if-nez v0, :cond_0

    const-string v0, "Activity started without bluetooth is not ready"

    .line 97
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "device_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDeviceAddress:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v0, "Activity started without a remote bluetooth device is not ready"

    .line 103
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    .line 106
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 109
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttach() CachedDevice is null. address = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move v1, v0

    .line 117
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    if-eqz v1, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 162
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p0, "BluetoothAboutFragment"

    const-string p1, "onPreferenceChange :: "

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p0, "BluetoothAboutFragment"

    const-string p1, "onPreferenceClick :: "

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 127
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    const-string v0, "BluetoothAboutFragment"

    const-string v1, "onResume"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mReceiverRegistered:Z

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "onResume: disconnected"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;->initPreference()V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
