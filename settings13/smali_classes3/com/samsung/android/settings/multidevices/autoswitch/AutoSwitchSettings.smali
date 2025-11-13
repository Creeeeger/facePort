.class public Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoSwitchSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAvailableDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDescListPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPrefCategory:Landroidx/preference/SecPreferenceCategory;

.field private mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

.field private mSamsungAccountPref:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$Do920Xqt4MpFylZ2DVetD989IU4(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->lambda$initPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EvwCZ2XNNWdw8rq3699otNJVgJc(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->lambda$makeAutoSwitchDeviceList$2(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$txeUEA0z6UP82vgiWOJLB42tTa4(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->lambda$makeAutoSwitchDeviceList$1(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 77
    new-instance v0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;-><init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->handler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;-><init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getStringId(I)I
    .locals 0

    .line 387
    sget p0, Lcom/android/settings/R$string;->autoswitch_description_1:I

    if-ne p1, p0, :cond_2

    .line 388
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 389
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p1, Lcom/android/settings/R$string;->autoswitch_description_1_tablet_jpn:I

    goto :goto_0

    .line 390
    :cond_0
    sget p1, Lcom/android/settings/R$string;->autoswitch_description_1_tablet:I

    goto :goto_0

    .line 392
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p1, Lcom/android/settings/R$string;->autoswitch_description_1_jpn:I

    goto :goto_0

    .line 394
    :cond_2
    sget p0, Lcom/android/settings/R$string;->autoswitch_description_2:I

    if-ne p1, p0, :cond_3

    .line 395
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p1, Lcom/android/settings/R$string;->autoswitch_description_2_tablet:I

    goto :goto_0

    .line 396
    :cond_3
    sget p0, Lcom/android/settings/R$string;->autoswitch_guide_header:I

    if-ne p1, p0, :cond_4

    .line 397
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p1, Lcom/android/settings/R$string;->autoswitch_guide_header_tablet:I

    goto :goto_0

    .line 398
    :cond_4
    sget p0, Lcom/android/settings/R$string;->autoswitch_device_list_header:I

    if-ne p1, p0, :cond_5

    .line 399
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p1, Lcom/android/settings/R$string;->autoswitch_device_list_header_tablet:I

    :cond_5
    :goto_0
    return p1
.end method

.method private initPreference()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 156
    sget v0, Lcom/android/settings/R$xml;->sec_autoswitch_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "samsung_account_preference"

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    const-string v0, "auto_switch_preview"

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "auto_switch_device_list"

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    .line 162
    sget v1, Lcom/android/settings/R$string;->autoswitch_device_list_header:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    sget v1, Lcom/android/settings/R$string;->autoswitch_guide_header:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getStringId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setDescText(Ljava/lang/String;)V

    const-string v0, "auto_switch_dot_list"

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mDescListPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    .line 167
    sget v1, Lcom/android/settings/R$id;->help_description_app_text1:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->autoswitch_description_1:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mDescListPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->help_description_app_text2:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->autoswitch_description_2:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->setImage()V

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updateAccountInformation()V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private synthetic lambda$initPreference$0(Landroidx/preference/Preference;)Z
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 178
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x24000000

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$makeAutoSwitchDeviceList$1(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->isBudsDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$makeAutoSwitchDeviceList$2(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeAutoSwitchDeviceList()V
    .locals 7

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 298
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 299
    iget-object v3, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 301
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda1;-><init>()V

    .line 306
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda2;-><init>()V

    .line 307
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda2;-><init>()V

    .line 309
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 310
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 312
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 313
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 314
    new-instance v4, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 315
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, v1, 0x1

    add-int/lit16 v1, v1, 0x2710

    .line 317
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 318
    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    .line 322
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_connected:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 324
    :cond_2
    sget v1, Lcom/android/settings/R$string;->bluetooth_summary_restored_device_short:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/Utils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 329
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    .line 328
    :goto_3
    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 332
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 335
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 336
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v1, v5

    goto/16 :goto_1

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 342
    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 343
    sget v1, Lcom/android/settings/R$layout;->sec_autoswitch_no_item:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string v1, "auto_switch_empty_device"

    .line 344
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 347
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 350
    :cond_6
    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "auto_switch_inset"

    .line 351
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setImage()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "Auto_Switch_Buds_Dark.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "Auto_Switch_Buds_Light.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateAccountInformation()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_samsung_account_jpn:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_samsung_account:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 208
    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAccountInformation, account.name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoSwitchSettings"

    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/4 v0, 0x1

    .line 211
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updateSettingEnabled(Z)V

    goto :goto_2

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_not_signed_in_to_samsung_account_jpn:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_not_signed_in_to_samsung_account:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updateSettingEnabled(Z)V

    :goto_2
    return-void
.end method

.method private updateSettingEnabled(Z)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 380
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x200a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 108
    sget p0, Lcom/android/settings/R$xml;->sec_autoswitch_settings:I

    return p0
.end method

.method public getSamsungAccount()Landroid/accounts/Account;
    .locals 2

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.osp.app.signin"

    .line 269
    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 270
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 271
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->initPreference()V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updatePreferences()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 124
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->initPreference()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 138
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 357
    instance-of v0, p1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 358
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 359
    check-cast p1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;->getCachedBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 360
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/settings/account/AccountUtils;->addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 0

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updatePreferences()V

    return-void
.end method

.method public updatePreferences()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    const-string v1, "auto_switch_empty_device"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 285
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "auto_switch_inset"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 286
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 289
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->makeAutoSwitchDeviceList()V

    return-void
.end method
