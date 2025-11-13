.class public Lcom/samsung/android/settings/connection/GigaLteSettings;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

.field public mAlertDialog:Landroid/app/AlertDialog$Builder;

.field public mHoldingHandler:Landroid/os/Handler;

.field public mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

.field public mIsKTtestOnly:Z

.field public mIsMobileDataEnabling:Z

.field public mIsNetworkEnabling:Z

.field public mIsSupport5G:Z

.field public mIsWiFiEnabling:Z

.field public mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

.field public mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

.field public mRemoveProgress:Lcom/samsung/android/settings/connection/GigaLteSettings$35;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$36;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/connection/GigaLteSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    return-void
.end method


# virtual methods
.method public final checkSwitchDisableStatus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final getChangedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f14373e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1436e5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isRoaming()Z
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v0, "isRoaming() isAisSIMValid now and isRoaming"

    const-string v1, "GigaLteSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "52015"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v2, "isRoaming() current networkId = "

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final isSimPresent()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

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

.method public final isSimValid()Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v4, v2

    :cond_0
    invoke-static {v0, v4}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "52003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "slodId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/operator: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/isAisSimValid: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ConnectionsUtils"

    invoke-static {v5, v3, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "45002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "45008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "mptcp_value"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    const p1, 0x7f142c91

    const v0, 0x7f142c98

    const v2, 0x7f142c9a

    const-string/jumbo v3, "smart_bonding"

    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    const v5, 0x104000a

    const v6, 0x7f142c89

    const/high16 v7, 0x1040000

    if-eqz p2, :cond_14

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-boolean v8, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsKTtestOnly:Z

    if-nez v8, :cond_14

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v9, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v9, :cond_2

    const v9, 0x7f14109a

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    const v9, 0x7f1410a8

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const v9, 0x7f14109e

    const v10, 0x7f1410a0

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    const p2, 0x7f142cac

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const v0, 0x7f14109d

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_3
    const p1, 0x7f1410ad

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v10, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_5
    const p1, 0x7f1410a3

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const v0, 0x7f14109c

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    const p1, 0x7f1410ab

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_8
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v9, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    const p1, 0x7f1410a2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f141096

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_b
    const p1, 0x7f1410ac

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p2, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v2, 0x15

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p2, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    const v11, 0x7f1436f4

    if-nez v8, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_e

    const p1, 0x7f1410a9

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p2, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f141093

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v9, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x1b

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x1c

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_10

    const p1, 0x7f1410b0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p2, :cond_f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f14109f

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v10, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_f
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v2, 0x1d

    invoke-direct {p2, p0, v2}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$6;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$6;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_12

    const p2, 0x7f1410a4

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v0, :cond_11

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f141091

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f141092

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$6;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/connection/GigaLteSettings$6;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$6;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$6;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_14

    const p1, 0x7f1410ae

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p2, :cond_13

    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f141097

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$6;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$6;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    const v0, 0x7f1422fc

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_14
    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1c

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f1402d6

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const v9, 0x7f14373e

    if-eqz v8, :cond_19

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1402d9

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_15
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1402d3

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_18

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1402d7

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_17
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1402d2

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_18
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1402d8

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1402db

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1402dc

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/4 v2, 0x6

    invoke-direct {p2, p0, v2}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/4 v0, 0x7

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f1402d4

    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v2, 0x8

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x9

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1c
    if-eqz p2, :cond_29

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result p1

    if-eqz p1, :cond_29

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p2, :cond_1d

    const p2, 0x7f14058d

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_1d
    const p2, 0x7f14058c

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimPresent()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f140587

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0xa

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b

    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimPresent()Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    const-string p2, "45005"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoaming(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto/16 :goto_9

    :cond_1f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1411db

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_20
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f14058b

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0xd

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0xe

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b

    :cond_21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_7

    :cond_22
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1411da

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_23
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f14058a

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x11

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x12

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b

    :cond_24
    :goto_7
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1411d8

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    :cond_25
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f14058f

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_8
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0xf

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x10

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    :cond_26
    :goto_9
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1411dc

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_a

    :cond_27
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f14058e

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_a
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0xc

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    :cond_28
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f140588

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0xb

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :goto_b
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_29
    if-eqz p2, :cond_31

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
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    const-string v0, "GigaLteSettings"

    if-eqz p1, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connected Wi-Fi SSID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_2b
    const-string v2, "Connected Wi-Fi SSID = null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_2c
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const v0, 0x7f140547

    const v2, 0x7f140546

    const v3, 0x7f140548

    const v4, 0x7f140545

    goto :goto_d

    :cond_2d
    const v0, 0x7f1431d8

    const v2, 0x7f1431d6

    const v3, 0x7f1431d9

    const v4, 0x7f1431d5

    :goto_d
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    const v6, 0x7f142e1e

    const v7, 0x7f142e1f

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x13

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x14

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v6, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_2e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x16

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x17

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v6, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_2f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x18

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v7, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x19

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v6, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

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

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\"Supernet-SIM\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1431d7

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/settings/connection/GigaLteSettings$1;

    const/16 v0, 0x1a

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/connection/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    invoke-virtual {p1, v5, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_31
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->showProgressDialog$1()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo p1, "persist.mptcp.limitation"

    const-string v0, "false"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsKTtestOnly:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Is Test mode for KTT = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsKTtestOnly:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GigaLteSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "gigaltesettings create"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsKTtestOnly:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimPresent()Z

    move-result p1

    const/4 v0, 0x0

    const v1, 0x104000a

    const v2, 0x7f1410a8

    const v3, 0x7f14109a

    if-nez p1, :cond_2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1410a6

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimValid()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f141094

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1410a5

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    :goto_2
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0d07ec

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00c8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f14108d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f14108e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f14108f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsSupport5G:Z

    if-eqz p3, :cond_1

    const p3, 0x7f140586

    goto :goto_0

    :cond_1
    const p3, 0x7f140585

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_3

    const p3, 0x7f140544

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    const p3, 0x7f1431d4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_5

    const p3, 0x7f1402d1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isFastWebSIMValid(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_6

    const p3, 0x7f140f5c

    goto :goto_0

    :cond_6
    const p3, 0x7f1410a1

    :goto_0
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/connection/GigaLteSettings;->getChangedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaLteSettings$35;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "GigaLteSettings"

    const-string v1, "gigaltesettings resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    const-string v0, "com.samsung.android.mptcp.MPTCP_STATE"

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/settings/connection/GigaLteSettings$37;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mAirplaneModeObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v2, p0, v4, v5}, Lcom/samsung/android/settings/connection/GigaLteSettings$37;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mMobileDataObserver:Lcom/samsung/android/settings/connection/GigaLteSettings$37;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->checkSwitchDisableStatus()V

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mptcp_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne v2, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaLteSettings$35;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public final sendMptcpStartBroadCast(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mptcp_start"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending MPTCP Start Stop broadcast to MPTCP Service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GigaLteSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public final showProgressDialog$1()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14186a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/connection/GigaLteSettings$35;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings$35;-><init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaLteSettings$35;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
