.class public final synthetic Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "WifiList.Available"

    if-nez p0, :cond_0

    const-string p0, "onClick item but ignored."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsAdminRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const-string/jumbo v1, "showDisabledByAdminDialog - restricted by policy no_add_wifi_config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_add_wifi_config"

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_3
    const-string p0, "onClick - restricted by policy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WifiSettings"

    const-string v1, "onItemClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p1, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, p1, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->checkToShowRetryForIncorrectPasswordLength(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiSettings;->showConnectFragmentForRetry(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_3

    :cond_6
    iget-object v0, p1, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->isSecurityTypeSupportRetry(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p1, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiSettings;->onWifiEntryPreferenceClick(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_8
    :goto_3
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v0, "WifiList.Available"

    const-string v1, "isSecMHS="

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v5
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    const-string v7, "disableReason"

    if-nez v5, :cond_e

    :try_start_1
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-virtual {v4}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->getSemDisableReason()I

    move-result v4
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "NETWORK_SELECTION_DISABLED_BY_WRONG_PASSWORD"

    if-eq v4, v6, :cond_c

    const/4 v6, 0x3

    if-eq v4, v6, :cond_a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    goto/16 :goto_5

    :cond_9
    :try_start_2
    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v5, "NETWORK_SELECTION_DISABLED_DHCP_FAILURE"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_a
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_b
    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v5, "NETWORK_SELECTION_DISABLED_ASSOCIATION_REJECTION"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_d
    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v5, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_FAILURE"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_e
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v5

    const/4 v8, 0x7

    if-ne v5, v8, :cond_11

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_15

    iget v4, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-ne v4, v3, :cond_f

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v5, "NETWORK_SELECTION_DISABLED_BY_WIPS"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_f
    const/4 v5, 0x6

    if-eq v4, v5, :cond_10

    if-ne v4, v8, :cond_15

    :cond_10
    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v5, "NETWORK_SELECTION_DISABLED_NO_INTERNET_PERMANENT"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_11
    invoke-static {p0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isEapNetworkWithCaCertError(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-nez v5, :cond_13

    goto :goto_4

    :cond_13
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v5

    if-eq v5, v6, :cond_14

    const/16 v6, 0xc

    if-eq v5, v6, :cond_14

    :goto_4
    iget-object v5, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_14
    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v5, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_15
    :goto_5
    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v5, "config"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v5, "netid"

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v5, "randomMacSetting"

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    const-string v4, "isSecMHS"

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsMobileHotspot()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsMobileHotspot()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mDisableIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->notifyOnLaunchActivityIfNeeded()V

    const/high16 v1, 0x4000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->notifyOnLaunchActivityFinishedIfNeeded()V

    goto :goto_7

    :cond_16
    const-string p0, "launchWifiTips failure, config is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchWifiTips, ActivityNotFoundException : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_7
    iput-boolean v3, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mIsTipsIconClicked:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
