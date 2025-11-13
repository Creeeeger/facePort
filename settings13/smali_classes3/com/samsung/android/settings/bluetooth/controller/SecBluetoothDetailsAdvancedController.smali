.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecBluetoothDetailsAdvancedController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;


# instance fields
.field private final OFF:B

.field private final ON:B

.field private isSupportTouchBlock:Z

.field private isSupportTouchControl:Z

.field private mAboutPreference:Landroidx/preference/Preference;

.field mAdvancedContainer:Landroidx/preference/PreferenceGroup;

.field private mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mManufacturerData:[B

.field private mOpenAppPreference:Landroidx/preference/Preference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mReceiverRegistered:Z

.field private mScreenId:Ljava/lang/String;

.field private mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 79
    iput-byte p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->OFF:B

    const/4 v0, 0x1

    .line 80
    iput-byte v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->ON:B

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mReceiverRegistered:Z

    .line 100
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchBlock:Z

    .line 101
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchControl:Z

    .line 107
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 108
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 109
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 110
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mManufacturerData:[B

    .line 112
    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    .line 113
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mScreenId:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 116
    invoke-virtual {p5, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private initCurrentStatus()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_TOUCH_LOCK:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    array-length v1, v0

    if-lez v1, :cond_1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTouchData :: STATE_TOUCH_LOCK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecBluetoothDetailsAdvancedController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    .line 174
    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 175
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private initFeatureList()V
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "SecBluetoothDetailsAdvancedController"

    if-nez v0, :cond_0

    const-string p0, "initFeatureList :: device is null"

    .line 138
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_0
    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->ALL_CURRENT_STATES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v2

    if-eqz v0, :cond_2

    .line 145
    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feature data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current All data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->parseSupportedFeatures([B)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "initFeatureList :: SEM_METADATA_SUPPROT_FEATURE  is null"

    .line 146
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStartFragment(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2

    .line 399
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 400
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "device_address"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    .line 403
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x18

    .line 404
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 405
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method

.method private parseSupportedFeatures([B)V
    .locals 10

    const-string v0, "SecBluetoothDetailsAdvancedController"

    if-eqz p1, :cond_6

    .line 318
    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 323
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const v4, 0xffff

    and-int/2addr v2, v4

    .line 329
    sget-object v5, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v5

    if-ne v2, v5, :cond_5

    const/4 v2, 0x2

    .line 330
    :cond_1
    :goto_0
    :pswitch_0
    array-length v5, p1

    if-ge v2, v5, :cond_5

    .line 331
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/2addr v5, v4

    add-int/lit8 v6, v2, 0x2

    .line 332
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    .line 334
    new-array v7, v6, [B

    add-int/lit8 v8, v2, 0x3

    .line 335
    invoke-static {p1, v8, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSupportedFeatures :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getConstantName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v2, v6

    .line 341
    invoke-static {v5}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v6

    .line 343
    sget-object v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    invoke-virtual {v6}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v6

    aget v6, v8, v6

    packed-switch v6, :pswitch_data_0

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process_MSG_ID_READ_PROPERTY > NOT SUPPORTED FEATURE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const-string v5, "%x"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :pswitch_1
    aget-byte v6, v7, v1

    if-nez v6, :cond_2

    .line 352
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v5, :cond_1

    iget-boolean v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchBlock:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchControl:Z

    if-nez v6, :cond_1

    .line 353
    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_0

    .line 356
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v6, :cond_1

    .line 357
    sget-object v6, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_TOUCH_CONTROL:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v6}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 358
    sget v5, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v6, 0x1d6b4

    if-lt v5, v6, :cond_3

    .line 359
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->sec_bluetooth_touch_control:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 360
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchControl:Z

    .line 362
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_0

    .line 365
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_0

    .line 368
    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchBlock:Z

    .line 369
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_1
    const-string p0, "parseSupportedFeatures :: DataPacket is too short."

    .line 319
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setPreference(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "SecBluetoothDetailsAdvancedController"

    const-string v1, "setPreference :: "

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 271
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 272
    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :cond_2
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private setSwitchPreference(Landroidx/preference/Preference;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "SecBluetoothDetailsAdvancedController"

    const-string v1, "setPreference :: "

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 283
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 284
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public connectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 466
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "SecBluetoothDetailsAdvancedController"

    const-string v1, "displayPreference :: "

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bluetooth_advanced"

    .line 123
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    .line 124
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 126
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initPreference(Landroidx/preference/PreferenceScreen;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initFeatureList()V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 133
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_advanced"

    return-object p0
.end method

.method protected initPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->list_ic_true_wireless_earbuds:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    const-string v0, "bluetooth_pref_about_earbuds"

    .line 159
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAboutPreference:Landroidx/preference/Preference;

    const-string v0, "bluetooth_pref_open_galaxy_wearable"

    .line 160
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mOpenAppPreference:Landroidx/preference/Preference;

    const-string v0, "bluetooth_pref_touch_controls"

    .line 161
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAboutPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_bluetooth_earbuds_menu:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setPreference(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mOpenAppPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_bluetooth_open_wearable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setPreference(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_bluetooth_touch_controls:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setSwitchPreference(Landroidx/preference/Preference;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string p0, "SecBluetoothDetailsAdvancedController"

    const-string v0, "onDestroy"

    .line 221
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->unRegisterCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string p2, "SecBluetoothDetailsAdvancedController"

    const-string v0, "onPreferenceChange :: "

    .line 247
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    instance-of v0, p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 250
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    const-string v2, "bluetooth_pref_touch_controls"

    .line 253
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-array p1, v1, [B

    aput-byte p2, p1, p2

    goto :goto_1

    :cond_1
    new-array p1, v1, [B

    aput-byte v1, p1, p2

    .line 255
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_TOUCH_LOCK:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2, p1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mScreenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->event_device_profiles_setting_block_touches_switch:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick :: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsAdvancedController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bluetooth_pref_open_galaxy_wearable"

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 232
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->event_device_profiles_setting_open_galaxy_wearable:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->shouldLaunchGM(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "bluetooth_pref_about_earbuds"

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->event_device_profiles_setting_about_earbuds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-class v2, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->onStartFragment(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 240
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mScreenId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "SecBluetoothDetailsAdvancedController"

    const-string v1, "onResume"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initFeatureList()V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setIconEnabled(Z)V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initCurrentStatus()V

    return-void
.end method

.method public setDelayEnabled()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    .line 425
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 426
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setIconEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initFeatureList()V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setIconEnabled(Z)V

    .line 419
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initCurrentStatus()V

    return-void
.end method

.method public setIconEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAboutPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    .line 438
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 441
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mOpenAppPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_3

    .line 442
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    return-void
.end method

.method public updateBatteryState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public updateNoiseControlState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public updateTouchPadState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initCurrentStatus()V

    return-void
.end method
