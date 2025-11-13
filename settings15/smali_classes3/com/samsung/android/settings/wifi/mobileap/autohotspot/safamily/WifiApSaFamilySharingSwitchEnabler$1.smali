.class public final Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Broadcast Received: "

    const-string v1, "WifiApSaFamilySharingSwitchEnabler"

    const-string v2, "com.samsung.android.server.wifi.softap.smarttethering.familySharingDisabledIntent"

    invoke-static {v0, p2, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$1;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->updateSwitchState()V

    goto :goto_0

    :cond_3
    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler;->updateSwitchState()V

    :cond_4
    :goto_0
    return-void
.end method
