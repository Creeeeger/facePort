.class public final Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;


# instance fields
.field public isSupportTouchBlock:Z

.field public isSupportTouchControl:Z

.field public mAboutPreference:Landroidx/preference/Preference;

.field public mAdvancedContainer:Landroidx/preference/PreferenceGroup;

.field public mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

.field public final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final mDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field public mOpenAppPreference:Landroidx/preference/Preference;

.field public final mScreenId:Ljava/lang/String;

.field public final mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchBlock:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchControl:Z

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    const p1, 0x7f141fc6

    invoke-static {p2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mScreenId:Ljava/lang/String;

    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final connectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

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

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    const-string v0, "SecBluetoothDetailsAdvancedController"

    const-string v1, "displayPreference :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "bluetooth_advanced"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080707

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    const-string v1, "bluetooth_pref_about_earbuds"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAboutPreference:Landroidx/preference/Preference;

    const-string v1, "bluetooth_pref_open_galaxy_wearable"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mOpenAppPreference:Landroidx/preference/Preference;

    const-string v1, "bluetooth_pref_touch_controls"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->getDeviceIconIndex()I

    move-result v1

    const v4, 0x7f0806df

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAboutPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f08084e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setPreference$1(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->getDeviceIconIndex()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAboutPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f08084f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setPreference$1(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAboutPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->getDeviceIconIndex()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setPreference$1(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mOpenAppPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f080859

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setPreference$1(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f08084b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string/jumbo v4, "setPreference :: "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0600c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initFeatureList()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getDeviceIconIndex()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceIcon()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const p0, 0x7f08038a

    return p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_advanced"

    return-object p0
.end method

.method public final initCurrentStatus()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->STATE_TOUCH_LOCK:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateTouchData :: STATE_TOUCH_LOCK = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecBluetoothDetailsAdvancedController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public final initFeatureList()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "SecBluetoothDetailsAdvancedController"

    if-nez v0, :cond_0

    const-string p0, "initFeatureList :: device is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v2, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Lcom/samsung/android/bluetooth/SmepTag;->ALL_CURRENT_STATES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v4, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    if-eqz v0, :cond_8

    array-length v4, v0

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "feature data = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "current All data = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v0

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    const-string/jumbo p0, "parseSupportedFeatures :: DataPacket is too short."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    const v6, 0xffff

    and-int/2addr v4, v6

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    if-ne v4, v2, :cond_7

    const/4 v2, 0x2

    :cond_3
    :goto_0
    :pswitch_0
    array-length v4, v0

    if-ge v2, v4, :cond_7

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    and-int/2addr v4, v6

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    new-array v8, v7, [B

    add-int/lit8 v9, v2, 0x3

    invoke-static {v0, v9, v8, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "parseSupportedFeatures :: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/bluetooth/SmepTag;->getConstantName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v2, v7

    invoke-static {v4}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController$1;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    invoke-virtual {v7}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    move-result v7

    aget v7, v9, v7

    packed-switch v7, :pswitch_data_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "%x"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "process_MSG_ID_READ_PROPERTY > NOT SUPPORTED FEATURE : "

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    aget-byte v7, v8, v3

    if-nez v7, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v4, :cond_3

    iget-boolean v7, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchBlock:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchControl:Z

    if-nez v7, :cond_3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_TOUCH_CONTROL:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v7}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v7

    if-ne v4, v7, :cond_6

    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v7, 0x1d6b4

    if-lt v4, v7, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const v7, 0x7f14223f

    invoke-static {v4, v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController$$ExternalSyntheticOutline0;->m(Landroidx/preference/PreferenceFragmentCompat;I)Ljava/lang/String;

    move-result-object v4

    iput-boolean v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchControl:Z

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_0

    :cond_6
    iput-boolean v5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->isSupportTouchBlock:Z

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_0

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    const-string p0, "initFeatureList :: SEM_METADATA_SUPPROT_FEATURE  is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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

.method public final isAvailable()Z
    .locals 0

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

    const-string/jumbo v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->unRegisterCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string/jumbo p2, "onPreferenceChange :: "

    const-string v0, "SecBluetoothDetailsAdvancedController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p2, p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

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

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->STATE_TOUCH_LOCK:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2, p1}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->makeTlv(I[B)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140ed5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mScreenId:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "key = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return v1
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPreferenceClick :: key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsAdvancedController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bluetooth_pref_open_galaxy_wearable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140ee1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->shouldLaunchGM(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "bluetooth_pref_about_earbuds"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140ed0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-class v2, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAboutFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "device_address"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x18

    iget-object v5, v4, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput v0, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v2, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v3, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v4}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    :cond_1
    const-string p1, ""

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mScreenId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "SecBluetoothDetailsAdvancedController"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initFeatureList()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setIconEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initCurrentStatus()V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initFeatureList()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver$SmepCallBack;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setIconEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initCurrentStatus()V

    return-void
.end method

.method public final setIconEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAboutPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mBlockTouchesPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mOpenAppPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    return-void
.end method

.method public final setPreference$1(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "SecBluetoothDetailsAdvancedController"

    const-string/jumbo v1, "setPreference :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public final updateBatteryState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public final updateNoiseControlState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public final updateTouchPadState(Landroid/bluetooth/BluetoothDevice;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->initCurrentStatus()V

    return-void
.end method
