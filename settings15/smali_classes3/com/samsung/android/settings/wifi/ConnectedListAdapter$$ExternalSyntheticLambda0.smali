.class public final synthetic Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string v1, "0112"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiList.Connected"

    const-string v1, "launchNetworkDetailsFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_chosen_wifientry_key"

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_chosen_wifientry_config"

    invoke-virtual {v2, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/ConnectedListAdapter;->mListener:Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;->onItemClicked(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
