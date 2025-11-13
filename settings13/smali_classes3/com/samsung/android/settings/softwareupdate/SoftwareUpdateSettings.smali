.class public Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;
    }
.end annotation


# static fields
.field private static DSH_UICC_UNLOCK_MODELS:[Ljava/lang/String; = null

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mDisplayDC:Z = false

.field private static mDisplayPRL:Z = false

.field private static mDisplayUICC:Z = false

.field private static mEnableMenu:Z = false

.field private static mEnableMenuUICC:Z = false

.field private static mSupportDualLockDSH:Z = false

.field private static mSupportDualLockTMO:Z = true


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUpdateInfoPref:Landroidx/preference/SecPreference;

.field public mNoResponseTimer:Landroid/os/CountDownTimer;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSoftwareUpdatePref:Landroidx/preference/SecPreference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mWaitingMessage:I

.field private mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingMessage(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWaitingMessage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOemSimLock(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->getOemSimLock()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGetSimLockResponse(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->handleGetSimLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLastCheckedDate(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateLastCheckedDate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmDisplayDC()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmDisplayPRL()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayPRL:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmDisplayUICC()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const-string v0, "SM-A515U"

    const-string v1, "SM-A125U"

    const-string v2, "SM-A526U"

    const-string v3, "SM-A205U"

    const-string v4, "SM-G973U"

    const-string v5, "SM-A025U"

    const-string v6, "SM-A102U"

    const-string v7, "SM-A215U"

    const-string v8, "SM-G981U"

    .line 106
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->DSH_UICC_UNLOCK_MODELS:[Ljava/lang/String;

    .line 107
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSupportDualLockDSH:Z

    const/4 v0, 0x0

    .line 110
    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    .line 111
    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenu:Z

    .line 112
    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    .line 113
    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayPRL:Z

    .line 114
    sput-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    .line 653
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    .line 93
    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    .line 94
    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    .line 96
    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWaitingMessage:I

    .line 120
    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    .line 152
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;

    const-wide/16 v4, 0x4e20

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$1;-><init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;JJ)V

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mNoResponseTimer:Landroid/os/CountDownTimer;

    .line 168
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$2;-><init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Landroid/os/Handler;

    .line 207
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 225
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$3;-><init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private addSoftwareUpdateBadge()V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 694
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    goto :goto_0

    .line 696
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applySoftwareUpdatePolicy()V
    .locals 4

    .line 703
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isOTAUpgradeAllowed(Landroid/content/Context;)Z

    move-result v0

    .line 704
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isFirmwareAutoUpdateAllowed(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 706
    sget-object v3, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->DOWNLOAD_AND_INSTALL:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 708
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 711
    :cond_0
    sget-object v3, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v3}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 713
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private static canReadSimLockValue(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "SPR"

    const-string v1, "VMU"

    const-string v2, "BST"

    const-string v3, "XAS"

    .line 498
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "DSH"

    .line 499
    filled-new-array {v5, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canReadSimLockValue() salesCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoftwareUpdateSettings"

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ro.boot.carrierid"

    const-string v6, ""

    .line 503
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canReadSimLockValue() boot_carrier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "TMB"

    .line 507
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 509
    sget-boolean p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSupportDualLockTMO:Z

    if-nez p0, :cond_0

    return v7

    .line 512
    :cond_0
    sput-boolean v3, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    return v3

    .line 515
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 517
    sget-boolean p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSupportDualLockDSH:Z

    if-nez p0, :cond_2

    return v7

    .line 520
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    .line 522
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 523
    :cond_3
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 525
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportSimUnlock(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    return v7

    .line 529
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    const/4 v7, 0x1

    :cond_6
    return v7
.end method

.method private createBroadcastReceivers()V
    .locals 1

    .line 239
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$4;-><init>(Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getOemSimLock()V
    .locals 5

    const-string v0, "SoftwareUpdateSettings"

    const-string v1, "getOemSimLock"

    .line 124
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    .line 129
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x42

    .line 130
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 131
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 132
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x6d

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->sendRilRequest([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 138
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
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

    .line 134
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 138
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-void

    .line 137
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 138
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_2
    throw p0
.end method

.method private handleGetSimLockResponse(Landroid/os/Message;)V
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetSimLockResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftwareUpdateSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 181
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 185
    aget-byte v0, p1, v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->unlocked_for_any_sim_card:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->locked_to_sprint_or_international_sims:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->locked_to_sprint_sims_only:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UICC_UNLOCK:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 201
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleGetSimLockResponse buf.length "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " buf is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_1
    const-string p0, "response is null or empty"

    .line 182
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initSoftwareUpdateMenuCategory()V
    .locals 1

    .line 358
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 362
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->sec_software_update_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 364
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->DOWNLOAD_AND_INSTALL:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    .line 365
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    .line 366
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->LAST_UPDATE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateWifiAutoDownloadMenu()V

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateLastCheckedDate()V

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateLastUpdateData()V

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->addSoftwareUpdateBadge()V

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->initializeAndUpdateSprMenus()V

    return-void
.end method

.method private initializeAndUpdateSprMenus()V
    .locals 3

    .line 474
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PROFILE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    sget-boolean v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenu:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateSprPrefMenu(Ljava/lang/String;ZZ)V

    .line 475
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PRL:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayPRL:Z

    sget-boolean v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenu:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateSprPrefMenu(Ljava/lang/String;ZZ)V

    .line 476
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UICC_UNLOCK:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    sget-boolean v2, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->updateSprPrefMenu(Ljava/lang/String;ZZ)V

    .line 478
    sget-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayPRL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    if-nez v0, :cond_0

    const-string v0, "key_category_for_spr"

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 2

    .line 210
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request"

    .line 211
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 213
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 217
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string p0, "SoftwareUpdateSettings"

    const-string p1, "mServiceMessenger is null. Do nothing."

    .line 220
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private static isDSHTMBSalesCode()Z
    .locals 2

    .line 537
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMB"

    .line 538
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DSH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const-string v0, "SoftwareUpdateSettings"

    const-string v1, "isDSHTMBSalesCode returns true"

    .line 539
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private isLastVersionUpdatedByFOTA(Ljava/lang/String;)Z
    .locals 3

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 456
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->readPDAVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->readCSCVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->readCPVersion()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s/%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get current version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftwareUpdateSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private readCSCVersion()Ljava/lang/String;
    .locals 1

    const-string p0, "ril.official_cscver"

    const-string v0, ""

    .line 466
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readPDAVersion()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.PDA"

    const-string v0, ""

    .line 462
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendRilRequest([BI)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRilRequest invokeOemRilRequestRaw message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoftwareUpdateSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput p2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWaitingMessage:I

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mNoResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method private updateLastCheckedDate()V
    .locals 7

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroidx/preference/SecPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 335
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

    .line 337
    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    :goto_0
    cmp-long v0, v2, v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 342
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->sec_software_update_last_checked_on:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const-string v2, "%s %s"

    .line 342
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 346
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isShowMobileNetworkWarning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isWifiDedicated(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_software_update_download_updates_manually_summary_for_charge:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 350
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    :cond_3
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

.method private updateLastUpdateData()V
    .locals 12

    const-string v0, ""

    const-string v1, "content://com.wssyncmldm.ContentProvider/updatehistory"

    .line 405
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "Date"

    const-string v8, "Version"

    const-string v2, "ResultCode"

    .line 406
    filled-new-array {v1, v8, v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "rowid DESC"

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "ResultCode=200"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 414
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :try_start_1
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    move-wide v1, v9

    :goto_0
    if-eqz v11, :cond_1

    .line 424
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception v3

    move-wide v1, v9

    .line 421
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    goto :goto_1

    .line 428
    :cond_1
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get LastUpdateTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v5}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v5

    const-string v6, "MMMM dd, yyyy"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SoftwareUpdateSettings"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get LastUpdateVersion : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v3, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    if-eqz v3, :cond_4

    .line 432
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->isLastVersionUpdatedByFOTA(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    cmp-long v0, v1, v9

    if-lez v0, :cond_3

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isKeepOrderEvenRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u200e"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->sec_software_update_last_software_information_summary:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 441
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    const-string v0, "last version doesn\'t match or date <= 0"

    .line 443
    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_software_update_last_software_information_summary_for_nodata:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_4
    return-void

    :goto_5
    if-eqz v11, :cond_5

    .line 424
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_5
    throw p0
.end method

.method private updateSprPrefMenu(Ljava/lang/String;ZZ)V
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSprPrefMenu() Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 489
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateWifiAutoDownloadMenu()V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_3

    .line 379
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->shouldEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SOFTWARE_UPDATE_WIFI_ONLY2"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 386
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDefaultWifiAutoDownloadEnabled()Z

    move-result v0

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 392
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShowMobileNetworkWarning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isWifiDedicated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mWifiAutoDownloadPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->sec_software_update_auto_download_over_wifi_no_charge_summary:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1fa4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 276
    sget p0, Lcom/android/settings/R$xml;->sec_software_update_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 250
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SoftwareUpdateSettings"

    const-string v0, "onCreate Software Update"

    .line 251
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportChameleon(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->isDSHTMBSalesCode()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportMultipleSwUpdate(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenu:Z

    .line 255
    sput-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mEnableMenuUICC:Z

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->canReadSimLockValue(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    .line 257
    sget-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayDC:Z

    sput-boolean v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayPRL:Z

    if-eqz p1, :cond_1

    .line 260
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    .line 261
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->createBroadcastReceivers()V

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "sec.fota.intent.CHECKED_DATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 548
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 551
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "com.samsung.helphub"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 553
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    .line 555
    sget p0, Lcom/android/settings/R$string;->help_title:I

    invoke-interface {p1, v0, v0, p2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 556
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SoftwareUpdateSettings"

    const-string p1, "NameNotFoundException in onCreateOptionsMenu"

    .line 559
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 288
    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 565
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "helphub:section"

    const-string v2, "upgrade"

    .line 569
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 577
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 581
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 312
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 589
    sget-object v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 590
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->getMetricsCategory()I

    move-result p2

    const/16 v0, 0x1faa

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {p2, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "SOFTWARE_UPDATE_WIFI_ONLY2"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 600
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 602
    sget-object v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->DOWNLOAD_AND_INSTALL:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SoftwareUpdateSettings"

    if-eqz v1, :cond_0

    const-string v0, "Software Update Checked"

    .line 603
    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x12c0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 605
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->checkNewSoftwareUpdate(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 606
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->LAST_UPDATE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Last Update is clicked"

    .line 607
    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x12c3

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wssyncmldm.LastUpdateActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.wssyncmldm"

    .line 610
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string v0, "LastUpdateActivity is not found"

    .line 615
    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_software_update_last_software_information_summary_for_nodata:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroidx/preference/SecPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 620
    :cond_1
    sget-object v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PRL:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x20

    const-string v4, "EXTRA_HFA_TYPE"

    const-string v5, "com.sprint.samsung.OMADMExtension.HFA"

    const-string v6, "com.sec.omadmspr.sdm.SDMService"

    const-string v7, "com.sec.omadmspr"

    if-eqz v1, :cond_2

    const-string v0, "Update PRL is clicked"

    .line 621
    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 623
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "START_PRL"

    .line 625
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 628
    :cond_2
    sget-object v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PROFILE:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Update Profile is clicked"

    .line 629
    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 631
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "START_DP"

    .line 633
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 636
    :cond_3
    sget-object v1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->UICC_UNLOCK:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "UICC Unlock is clicked"

    .line 637
    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 639
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SIM_UNLOCK"

    .line 641
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 646
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 293
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->initSoftwareUpdateMenuCategory()V

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->applySoftwareUpdatePolicy()V

    .line 300
    sget-boolean v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mDisplayUICC:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    const-string v1, "SoftwareUpdateSettings"

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->getOemSimLock()V

    const-string p0, " onResume() mServiceMessenger"

    .line 303
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, " onResume() mServiceMessenger is null"

    .line 305
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "SoftwareUpdateSettings"

    const-string v1, "onStop Software Update"

    .line 317
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mNoResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 321
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public readCPVersion()Ljava/lang/String;
    .locals 1

    const-string p0, "ril.sw_ver"

    const-string v0, ""

    .line 470
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
