.class public Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static mDisplayDC:Z

.field public static mDisplayPRL:Z

.field public static mDisplayUICC:Z

.field public static mEnableMenu:Z

.field public static mEnableMenuUICC:Z

.field public static final mSupportDualLockDSH:Z


# instance fields
.field public mAutoDownloadPref:Landroidx/preference/SecPreference;

.field public final mHandler:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;

.field public mLastUpdateCheckTimeReceiver:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;

.field public mLastUpdateInfoPref:Landroidx/preference/SecPreference;

.field public final mNoResponseTimer:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;

.field public final mSecPhoneServiceConnection:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;

.field public mServiceMessenger:Landroid/os/Messenger;

.field public mSoftwareUpdatePref:Landroidx/preference/SecPreference;

.field public final mSvcModeMessenger:Landroid/os/Messenger;

.field public mWaitingMessage:I

.field public mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v5, "SM-A025U"

    const-string v6, "SM-A102U"

    const-string v0, "SM-A515U"

    const-string v1, "SM-A125U"

    const-string v2, "SM-A526U"

    const-string v3, "SM-A205U"

    const-string v4, "SM-G973U"

    const-string v7, "SM-A215U"

    const-string v8, "SM-G981U"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSupportDualLockDSH:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenu:Z

    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayPRL:Z

    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$5;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mAutoDownloadPref:Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWaitingMessage:I

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;-><init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mNoResponseTimer:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;

    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;-><init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSvcModeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;-><init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSecPhoneServiceConnection:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1fa4

    return p0
.end method

.method public final getOemSimLock()V
    .locals 4

    const-string v0, "SoftwareUpdateSettings"

    const-string v1, "getOemSimLock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->sendRilRequest([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    :try_start_2
    const-string p0, "getOemSimLock exception occurred during operation"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-void

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    throw p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701f6

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SoftwareUpdateSettings"

    const-string/jumbo v0, "onCreate Software Update"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_data_call_slot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_UseChameleon"

    invoke-virtual {v3, v0, v4, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    const-string v3, "DSH"

    const-string v4, "TMB"

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "isDSHTMBSalesCode returns true"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v6

    const-string v7, "CarrierFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual {v6, v0, v7, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenu:Z

    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "SPR"

    const-string v7, "VMU"

    const-string v8, "BST"

    const-string v9, "XAS"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v10

    filled-new-array {v3, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "canReadSimLockValue() salesCode: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "ro.boot.carrierid"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "canReadSimLockValue() boot_carrier: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sput-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    move v2, p1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSupportDualLockDSH:Z

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_5
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Setting_SupportSimUnlock"

    invoke-virtual {v1, v0, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    move v2, v5

    :cond_8
    :goto_2
    sput-boolean v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    sget-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    sput-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayPRL:Z

    if-eqz v2, :cond_9

    const-string p1, "com.sec.phone"

    const-string v0, "com.sec.phone.SecPhoneService"

    invoke-static {p1, v0}, Lcom/android/settings/DisplaySettings$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSecPhoneServiceConnection:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;

    invoke-virtual {v0, p1, v1, v5}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_9
    new-instance p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;-><init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "sec.fota.intent.CHECKED_DATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/16 p0, 0x1fa4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "com.samsung.helphub"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    const p0, 0x7f141139

    invoke-interface {p1, v0, v0, p2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoftwareUpdateSettings"

    const-string p1, "NameNotFoundException in onCreateOptionsMenu"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSecPhoneServiceConnection:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1fa4

    const/16 v1, 0x3ec

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "helphub:section"

    const-string/jumbo v2, "upgrade"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftwareUpdateSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_auto_download_over_wifi"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    sget-object p1, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$AutoDownloadOverWifi;->map:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "key_update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1fa4

    const-string v4, "SoftwareUpdateSettings"

    if-eqz v2, :cond_0

    const-string v0, "Software Update Checked"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c0

    invoke-static {v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->checkNewSoftwareUpdate(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->AUTO_DOWNLOAD:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$3;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$3;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Auto Download is clicked"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string v1, "key_last_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Last Update is clicked"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c3

    invoke-static {v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wssyncmldm.LastUpdateActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.wssyncmldm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string v0, "LastUpdateActivity is not found"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f14278c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v1, "update_prl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x20

    const-string v3, "EXTRA_HFA_TYPE"

    const-string v5, "com.sprint.samsung.OMADMExtension.HFA"

    const-string v6, "com.sec.omadmspr.sdm.SDMService"

    const-string v7, "com.sec.omadmspr"

    if-eqz v1, :cond_3

    const-string v0, "Update PRL is clicked"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "START_PRL"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "update_profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "Update Profile is clicked"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "START_DP"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "uicc_unlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "UICC Unlock is clicked"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SIM_UNLOCK"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 15

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const v0, 0x7f1701f6

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const-string v0, "key_update"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    const-string v1, "key_auto_download_over_wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    const-string v2, "key_auto_download"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mAutoDownloadPref:Landroidx/preference/SecPreference;

    const-string v3, "key_last_update"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->of(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->updateDBIfNeeded(Landroid/content/Context;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    const/4 v3, 0x2

    if-eq v4, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mAutoDownloadPref:Landroidx/preference/SecPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->setPersistent()V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mAutoDownloadPref:Landroidx/preference/SecPreference;

    sget-object v2, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->AUTO_DOWNLOAD:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mAutoDownloadPref:Landroidx/preference/SecPreference;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->setPersistent()V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SOFTWARE_UPDATE_WIFI_ONLY2"

    const/4 v4, -0x1

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_0

    :cond_4
    move v1, v5

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    sget-object v2, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateLastCheckedDate()V

    const-string v1, ""

    const-string v2, "content://com.wssyncmldm.ContentProvider/updatehistory"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v2, "Date"

    const-string v3, "Version"

    const-string v4, "ResultCode"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "rowid DESC"

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "ResultCode=200"

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_5

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v4, v7

    goto/16 :goto_b

    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :goto_2
    move-wide v8, v13

    goto :goto_4

    :cond_5
    move-object v2, v1

    move-wide v8, v13

    :goto_3
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    :catch_2
    move-exception v2

    move-object v7, v4

    goto :goto_2

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v2, v1

    :cond_7
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "get LastUpdateTime : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v10, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v10}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v10

    const-string v11, "MMMM dd, yyyy"

    invoke-direct {v7, v11, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "SoftwareUpdateSettings"

    invoke-static {v7, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "get LastUpdateVersion : "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    if-eqz v3, :cond_b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v5

    goto :goto_6

    :cond_8
    const-string/jumbo v3, "ro.build.PDA"

    invoke-static {v3, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "ril.official_cscver"

    invoke-static {v10, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "ril.sw_ver"

    invoke-static {v11, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "get current version : "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_6
    if-eqz v1, :cond_a

    cmp-long v1, v8, v13

    if-lez v1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "ur"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "\u200e"

    invoke-static {v3, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v8, 0x7f14278b

    invoke-virtual {v3, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    const-string v1, "last version doesn\'t match or date <= 0"

    invoke-static {v7, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14278c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_b
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f142b2d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_d
    :goto_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    sget-boolean v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenu:Z

    const-string/jumbo v3, "update_profile"

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateSprPrefMenu(Ljava/lang/String;ZZ)V

    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayPRL:Z

    sget-boolean v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenu:Z

    const-string/jumbo v3, "update_prl"

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateSprPrefMenu(Ljava/lang/String;ZZ)V

    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    sget-boolean v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    const-string/jumbo v3, "uicc_unlock"

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateSprPrefMenu(Ljava/lang/String;ZZ)V

    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayPRL:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    if-nez v1, :cond_e

    const-string v1, "key_category_for_spr"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isOTAUpgradeAllowed(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "false"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v8, "isFirmwareAutoUpdateAllowed"

    invoke-static {v2, v4, v8, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isFirmwareAutoUpdateAllowed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PrintSettingsFragment"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_f

    move v2, v6

    goto :goto_9

    :cond_f
    move v2, v5

    :goto_9
    xor-int/2addr v2, v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_10
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->AUTO_DOWNLOAD:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$3;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu$3;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12

    if-eqz v1, :cond_11

    if-eqz v2, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_12
    sget-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->getOemSimLock()V

    const-string p0, " onResume() mServiceMessenger"

    invoke-static {v7, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    const-string p0, " onResume() mServiceMessenger is null"

    invoke-static {v7, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_a
    return-void

    :goto_b
    if-eqz v4, :cond_15

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_15
    throw p0
.end method

.method public final onStop()V
    .locals 2

    const-string v0, "SoftwareUpdateSettings"

    const-string/jumbo v1, "onStop Software Update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mNoResponseTimer:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final sendRilRequest([B)V
    .locals 4

    const-string v0, "SoftwareUpdateSettings"

    const-string/jumbo v1, "sendRilRequest invokeOemRilRequestRaw message 109"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x6d

    iput v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWaitingMessage:I

    iget-object v2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mNoResponseTimer:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "request"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object p1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string p0, "mServiceMessenger is null. Do nothing."

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final updateLastCheckedDate()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SOFTWARE_UPDATE_LAST_CHECKED_DATE"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "SoftwareUpdateSettings"

    const-string v3, "SettingNotFoundException in updateLastCheckedDate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    :goto_0
    cmp-long v0, v2, v0

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f14278a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-static {v0, v3, v2}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f142787

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KOO"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "ro.carrier"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wifi-only"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "ro.radio.noril"

    const-string/jumbo v4, "no"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_2
    move-object v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isShowMobileNetworkWarning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isWifiDedicated(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateSprPrefMenu(Ljava/lang/String;ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateSprPrefMenu() Key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; display? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; enable? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftwareUpdateSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
