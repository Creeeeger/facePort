.class public final Lcom/android/wifitrackerlib/WifiPickerTracker$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final synthetic val$reason:I


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->val$reason:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;ZI)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput p3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->val$reason:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSemListener:Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;

    iget p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->val$reason:I

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    if-eq p0, v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iput-boolean v1, v0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/settings/wifi/WifiSettings;->mIsScanning:Z

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->checkConnectViaQr()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSemListener:Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;

    iget p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$2;->val$reason:I

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfiguredNetworksChanged"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WifiSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_e

    if-eqz p0, :cond_e

    const/4 v3, 0x4

    if-ne p0, v3, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    const/4 v3, 0x0

    if-eqz p0, :cond_7

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchWidgetController;->isChecked()Z

    move-result p0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v4, :cond_5

    iget-boolean p0, v4, Landroidx/preference/TwoStatePreference;->mChecked:Z

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchView:Landroid/widget/Switch;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    goto :goto_1

    :cond_6
    move p0, v3

    :goto_1
    if-nez p0, :cond_7

    const-string p0, "WifiEnabler is not checked"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_7
    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p0, :cond_f

    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    iget v1, v0, Lcom/android/settings/wifi/WifiSettings;->mConnectingNetworkId:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v6, "WifiSettings.retry"

    if-ne v1, v5, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->DBG:Z

    if-eqz v7, :cond_8

    const-string v7, "No connecting config to show retry popup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v7, v4

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/wifi/WifiRetryPopupController$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    :goto_2
    if-nez v7, :cond_b

    const-string p0, "cannot find config for networkId "

    invoke-static {v1, p0, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    move v2, v3

    goto :goto_4

    :cond_b
    iget v1, v7, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-eq v1, v5, :cond_c

    const-string p0, "Failed to show retry popup. It\'s default AP"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_d

    const/4 v5, 0x5

    if-eq v1, v5, :cond_d

    const/16 v5, 0x8

    if-ne v1, v5, :cond_a

    :cond_d
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->isAllowToShowDialogForRetry(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_a

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "configured network"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    invoke-static {v1, p0, v6}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_4
    if-eqz v2, :cond_f

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryWithCurrentConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiSettings;->showConnectFragmentForRetry(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_6

    :cond_e
    :goto_5
    const-string v0, "Wi-Fi state is disabling/disabled "

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
