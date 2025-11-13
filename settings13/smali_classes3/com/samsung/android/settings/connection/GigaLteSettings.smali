.class public Lcom/samsung/android/settings/connection/GigaLteSettings;
.super Landroidx/fragment/app/Fragment;
.source "GigaLteSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;,
        Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mHoldingHandler:Landroid/os/Handler;

.field private mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

.field private mIsKTtestOnly:Z

.field private mIsMobileDataEnabling:Z

.field private mIsNetworkEnabling:Z

.field private mIsSupport5G:Z

.field private mIsWiFiEnabling:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHoldingHandler(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoveProgress(Lcom/samsung/android/settings/connection/GigaLteSettings;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressDialog(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSwitchDisableStatus(Lcom/samsung/android/settings/connection/GigaLteSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->checkSwitchDisableStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetWiFiState(Lcom/samsung/android/settings/connection/GigaLteSettings;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getWiFiState(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRoaming(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isRoaming()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSimValid(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimValid()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 912
    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$36;

    invoke-direct {v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$36;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/connection/GigaLteSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    return-void
.end method

.method private checkSwitchDisableStatus()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private getAirplaneModeObserver()Landroid/database/ContentObserver;
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 1059
    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/GigaLteSettings$37;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1068
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private getChangedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMobileDataObserver()Landroid/database/ContentObserver;
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$38;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/GigaLteSettings$38;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 1088
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private getWiFiState(I)Z
    .locals 0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isRoaming()Z
    .locals 7

    .line 1012
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    .line 1014
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v0, "GigaLteSettings"

    const-string v1, "isRoaming() isAisSIMValid now and isRoaming"

    .line 1016
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 1020
    iget-object v5, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v5

    .line 1021
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "52015"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoaming() current networkId = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private isSKTSimValid()Z
    .locals 1

    .line 986
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "45005"

    .line 989
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSimPresent()Z
    .locals 5

    .line 951
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 954
    iget-object v3, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isSimValid()Z
    .locals 2

    .line 964
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 965
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isEnabledDataWithAisSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 972
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "45002"

    .line 973
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "45008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private registerObserver()V
    .locals 4

    .line 1092
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 1093
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1094
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getAirplaneModeObserver()Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x1

    .line 1092
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1095
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    .line 1096
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1097
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getMobileDataObserver()Landroid/database/ContentObserver;

    move-result-object p0

    .line 1095
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerReceivers()V
    .locals 3

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;

    if-nez v0, :cond_0

    .line 1107
    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;

    .line 1108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_STATE"

    .line 1109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 1110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    if-nez v0, :cond_1

    .line 1114
    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    .line 1115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .locals 3

    .line 818
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_START"

    .line 819
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mptcp_start"

    .line 820
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending MPTCP Start Stop broadcast to MPTCP Service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GigaLteSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 823
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 824
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private showAlertDialog()V
    .locals 4

    .line 1033
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimPresent()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x104000a

    if-nez v0, :cond_1

    .line 1034
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 1035
    iget-boolean v3, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v3, :cond_0

    .line 1036
    sget v3, Lcom/android/settings/R$string;->giga_5g_turn_on_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1038
    :cond_0
    sget v3, Lcom/android/settings/R$string;->giga_lte_popup:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1040
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$string;->giga_lte_nosim_msg:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1042
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 1043
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1044
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 1045
    iget-boolean v3, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v3, :cond_2

    .line 1046
    sget v3, Lcom/android/settings/R$string;->giga_5g_turn_on_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$string;->giga_5g_nokt_sim:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1049
    :cond_2
    sget v3, Lcom/android/settings/R$string;->giga_lte_popup:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1050
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget v3, Lcom/android/settings/R$string;->giga_lte_nokt_sim:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1052
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1053
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    :goto_2
    return-void
.end method

.method private unRegisterObserver()V
    .locals 2

    .line 1101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterReceivers()V
    .locals 3

    .line 1121
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1123
    iput-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    if-eqz v0, :cond_1

    .line 1126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1127
    iput-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 131
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 132
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 133
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "persist.mptcp.limitation"

    const-string v0, "false"

    .line 111
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsKTtestOnly:Z

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Is Test mode for KTT = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsKTtestOnly:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GigaLteSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "gigaltesettings create"

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsKTtestOnly:Z

    if-nez p1, :cond_1

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showAlertDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 139
    sget p2, Lcom/android/settings/R$layout;->sec_airplane_mode_settings:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 140
    sget p2, Lcom/android/settings/R$id;->airplane_mode_desc_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 143
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p3, :cond_0

    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/android/settings/R$string;->giga_5g_body:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$string;->giga_5g_body_1:I

    .line 145
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->giga_5g_body_2:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 147
    :cond_0
    sget p3, Lcom/android/settings/R$string;->giga_lte_body:I

    .line 148
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-boolean p3, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p3, :cond_1

    .line 150
    sget p3, Lcom/android/settings/R$string;->band_lte_body_5g:I

    goto :goto_0

    .line 152
    :cond_1
    sget p3, Lcom/android/settings/R$string;->band_lte_body:I

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    sget p3, Lcom/android/settings/R$string;->avea_giga_body:I

    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    sget p3, Lcom/android/settings/R$string;->vodafone_giga_body:I

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    sget p3, Lcom/android/settings/R$string;->ais_mptcp_body:I

    goto :goto_0

    .line 160
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    sget p3, Lcom/android/settings/R$string;->fastweb_mptcp_body:I

    .line 164
    :cond_6
    :goto_0
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 166
    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 220
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 213
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->unRegisterReceivers()V

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->unRegisterObserver()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 187
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "GigaLteSettings"

    const-string v1, "gigaltesettings resume"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->registerReceivers()V

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->registerObserver()V

    .line 193
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->checkSwitchDisableStatus()V

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v2, v1

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result v0

    if-eq v2, v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 204
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result v0

    if-ne v2, v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 10

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mptcp_value"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    const-string p1, "smart_bonding"

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    if-eqz p2, :cond_14

    .line 239
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-boolean v5, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsKTtestOnly:Z

    if-nez v5, :cond_14

    .line 240
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 242
    iget-boolean v6, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v6, :cond_2

    .line 243
    sget v6, Lcom/android/settings/R$string;->giga_5g_turn_on_title:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 245
    :cond_2
    sget v6, Lcom/android/settings/R$string;->giga_lte_popup:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 248
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_c

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 253
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_3

    .line 254
    sget p1, Lcom/android/settings/R$string;->giga_5g_turn_on_together_msg_when_wifi_turn_off:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->smart_bonding:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 256
    :cond_3
    sget p1, Lcom/android/settings/R$string;->giga_lte_samrtbonding_wifi:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 259
    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_5

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/android/settings/R$string;->giga_5g_turn_on_together_msg_when_wifi_turn_off:I

    new-array v2, v0, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/R$string;->smart_bonding:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/settings/R$string;->giga_5g_wifi_turn_on_msg:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->smart_network:I

    .line 261
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 263
    :cond_5
    sget p1, Lcom/android/settings/R$string;->giga_lte_booster_smart_wifi:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 266
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8

    .line 269
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_7

    .line 270
    sget p1, Lcom/android/settings/R$string;->giga_5g_turn_on_together_msg_when_mobile_data_turn_off:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->smart_bonding:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 272
    :cond_7
    sget p1, Lcom/android/settings/R$string;->giga_lte_samrtbonding_mobile:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 275
    :cond_8
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_9

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/android/settings/R$string;->giga_5g_turn_on_together_msg_when_mobile_data_turn_off:I

    new-array v2, v0, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/R$string;->smart_bonding:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/settings/R$string;->giga_5g_wifi_mobile_data_turn_on_msg:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->smart_network:I

    .line 277
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 279
    :cond_9
    sget p1, Lcom/android/settings/R$string;->giga_lte_booster_smart_mobile:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 283
    :cond_a
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_b

    .line 284
    sget p1, Lcom/android/settings/R$string;->giga_5g_popup_turn_off_msg:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->smart_bonding:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 286
    :cond_b
    sget p1, Lcom/android/settings/R$string;->giga_lte_samrtbonding_off:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 290
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$2;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p2, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 330
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 331
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 333
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 334
    sget p1, Lcom/android/settings/R$string;->giga_lte_popup_msg:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 335
    iget-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p2, :cond_d

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/android/settings/R$string;->giga_5g_mobile_data_wifi_msg:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/settings/R$string;->giga_5g_wifi_mobile_data_turn_on_msg:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_switch_to_mobile:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    :cond_d
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 340
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->smart_bonding_popup_msg_wifi_data_btn:I

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$3;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$4;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 360
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 361
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 363
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 364
    sget p1, Lcom/android/settings/R$string;->giga_lte_wifi_msg:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 365
    iget-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p2, :cond_f

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/android/settings/R$string;->giga_5g_wifi_msg:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/settings/R$string;->giga_5g_wifi_turn_on_msg:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_switch_to_mobile:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    :cond_f
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 370
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->smart_bonding_popup_msg_wifi_btn:I

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$5;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 383
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$6;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 389
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 391
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 392
    sget p1, Lcom/android/settings/R$string;->giga_lte_mobile_msg:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 393
    iget-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p2, :cond_11

    .line 394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/android/settings/R$string;->giga_5g_mobile_data_msg:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/settings/R$string;->giga_5g_mobile_data_turn_on_msg:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_switch_to_mobile:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 396
    :cond_11
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 398
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->smart_bonding_popup_msg_data_btn:I

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$7;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$8;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 413
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 415
    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_14

    .line 417
    sget p1, Lcom/android/settings/R$string;->giga_lte_switch_to_mobile:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 418
    iget-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p2, :cond_13

    .line 419
    sget p1, Lcom/android/settings/R$string;->giga_5g_popup_turn_on_msg:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_switch_to_mobile:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 421
    :cond_13
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 423
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->sec_dlg_turn_on:I

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$9;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$10;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$10;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 436
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 437
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_14
    if-eqz p2, :cond_1c

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 443
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 444
    sget v6, Lcom/android/settings/R$string;->ais_mptcp_popup_title:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 446
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_19

    .line 448
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x2

    if-nez p1, :cond_16

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_15

    .line 451
    sget p1, Lcom/android/settings/R$string;->ais_mptcp_smartbonding_wifi:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->smart_bonding:I

    .line 452
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 451
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 454
    :cond_15
    sget p1, Lcom/android/settings/R$string;->ais_mptcp_booster_smart_wifi:I

    new-array p2, p2, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->smart_bonding:I

    .line 455
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    sget v2, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    .line 454
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 457
    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 458
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_17

    .line 460
    sget p1, Lcom/android/settings/R$string;->ais_mptcp_smartbonding_mobile:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->smart_bonding:I

    .line 461
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 460
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 463
    :cond_17
    sget p1, Lcom/android/settings/R$string;->ais_mptcp_booster_smart_mobile:I

    new-array p2, p2, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->smart_bonding:I

    .line 464
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    sget v2, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    .line 463
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 467
    :cond_18
    sget p1, Lcom/android/settings/R$string;->ais_mptcp_smartbonding_off:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->smart_bonding:I

    .line 468
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 467
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 470
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 471
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$11;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$11;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$12;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$12;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 506
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 508
    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 509
    sget p1, Lcom/android/settings/R$string;->ais_mptcp_wifi_mobile_off_msg:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check:I

    .line 510
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 509
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 511
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 512
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->smart_bonding_popup_msg_wifi_data_btn:I

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$13;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$14;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$14;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 532
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 533
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 535
    :cond_1a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 536
    sget p1, Lcom/android/settings/R$string;->ais_mptcp_wifi_off_msg:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check:I

    .line 537
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 536
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 538
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 539
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->smart_bonding_popup_msg_wifi_btn:I

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$15;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$16;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$16;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 558
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 560
    :cond_1b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 561
    sget p1, Lcom/android/settings/R$string;->ais_mptcp_mobile_off_msg:I

    new-array p2, v0, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check:I

    .line 562
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 561
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 563
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 564
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->smart_bonding_popup_msg_data_btn:I

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$17;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$18;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$18;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 579
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1c
    if-eqz p2, :cond_29

    .line 584
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 585
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 586
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v0, :cond_1d

    .line 587
    sget v0, Lcom/android/settings/R$string;->band_lte_title_5G:I

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 589
    :cond_1d
    sget v0, Lcom/android/settings/R$string;->band_lte_title:I

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 592
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimPresent()Z

    move-result p2

    if-nez p2, :cond_1e

    .line 593
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->band_lte_nosim_msg:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 594
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$19;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$19;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 599
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b

    .line 600
    :cond_1e
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSKTSimValid()Z

    move-result p2

    if-nez p2, :cond_1f

    .line 601
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->band_lte_noskt_sim:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 602
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$20;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$20;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 607
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b

    .line 608
    :cond_1f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_27

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_20

    goto/16 :goto_9

    .line 621
    :cond_20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_22

    .line 622
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_21

    .line 623
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->hybrid_wifi_samrtbonding_off:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 625
    :cond_21
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->band_lte_samrtbonding_off:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 628
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$22;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$22;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 640
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$23;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$23;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 645
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b

    .line 646
    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_7

    .line 673
    :cond_23
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_24

    .line 674
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->hybrid_wifi_popup_msg:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    .line 676
    :cond_24
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->band_lte_popup_msg:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 679
    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$26;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$26;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$27;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$27;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 691
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 647
    :cond_25
    :goto_7
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_26

    .line 648
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->hybrid_wifi_msg:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    .line 650
    :cond_26
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->band_lte_wifi_msg:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 653
    :goto_8
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$24;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$24;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 666
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$25;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$25;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 671
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 609
    :cond_27
    :goto_9
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_28

    .line 610
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->hybrid_wifi_unavailable:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_a

    .line 612
    :cond_28
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->band_lte_unavaiable:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 615
    :goto_a
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$21;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$21;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 693
    :goto_b
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_29
    if-eqz p2, :cond_31

    .line 697
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_31

    :cond_2a
    const/4 p1, 0x0

    .line 700
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2c

    .line 701
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    const-string v0, "GigaLteSettings"

    if-eqz p1, :cond_2b

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected Wi-Fi SSID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_2b
    const-string v2, "Connected Wi-Fi SSID = null"

    .line 705
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_2c
    :goto_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 710
    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    .line 711
    sget v2, Lcom/android/settings/R$string;->switch_off_text:I

    .line 712
    sget v4, Lcom/android/settings/R$string;->avea_giga_title:I

    .line 713
    sget v5, Lcom/android/settings/R$string;->avea_giga_popup_msg:I

    .line 714
    sget v6, Lcom/android/settings/R$string;->avea_giga_wifi_msg:I

    .line 715
    sget v7, Lcom/android/settings/R$string;->avea_giga_mobile_msg:I

    goto :goto_d

    .line 717
    :cond_2d
    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    .line 718
    sget v2, Lcom/android/settings/R$string;->switch_off_text:I

    .line 719
    sget v4, Lcom/android/settings/R$string;->vodafone_giga_title:I

    .line 720
    sget v5, Lcom/android/settings/R$string;->vodafone_giga_popup_msg:I

    .line 721
    sget v6, Lcom/android/settings/R$string;->vodafone_giga_wifi_msg:I

    .line 722
    sget v7, Lcom/android/settings/R$string;->vodafone_giga_mobile_msg:I

    .line 725
    :goto_d
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 726
    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 728
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 729
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 730
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$28;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$28;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 745
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$29;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$29;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 751
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 753
    :cond_2e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 754
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 755
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$30;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$30;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 768
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$31;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$31;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 773
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 774
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 776
    :cond_2f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 777
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 778
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$32;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$32;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 787
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$33;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$33;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 792
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 793
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 795
    :cond_30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz p1, :cond_31

    .line 796
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\"Supernet-SIM\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 798
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->vodafone_giga_supernet_msg:I

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 799
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$34;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$34;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 805
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 806
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 811
    :cond_31
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 813
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog()V

    .line 814
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method public showProgressDialog()V
    .locals 3

    const/4 v0, 0x0

    .line 830
    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 831
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 832
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 833
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 834
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 835
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/android/settings/R$string;->mptcp_processing_dialog_message:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 837
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    .line 838
    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$35;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$35;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    .line 849
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
