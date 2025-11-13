.class public final Lcom/android/wifitrackerlib/WifiPickerTracker$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field public final synthetic val$updatedScanResult:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->val$updatedScanResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSemListener:Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->val$updatedScanResult:Z

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectedChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-object v1, v0, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    if-eqz p0, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v3, "WifiSettings.Picker"

    if-nez v2, :cond_1

    const-string p0, "user not picked any AP"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const-string v4, "SEC PICKER from location, networkId:"

    invoke-static {v2, v4, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/wifi/WifiPickerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/samsung/android/settings/wifi/WifiPickerHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->semMatches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "matched"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v2, v0, Lcom/android/settings/wifi/WifiSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean p0, v0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    goto :goto_1

    :cond_3
    iget-wide v1, v0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    :cond_4
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    goto :goto_1

    :cond_5
    iput-object v1, v0, Lcom/android/settings/wifi/WifiSettings;->mAutoHotspotWifiInfo:Landroid/net/wifi/WifiInfo;

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSemListener:Lcom/android/wifitrackerlib/WifiPickerTracker$SemWifiPickerTrackerCallback;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$1;->val$updatedScanResult:Z

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiSettings;->onWifiEntriesChanged(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
