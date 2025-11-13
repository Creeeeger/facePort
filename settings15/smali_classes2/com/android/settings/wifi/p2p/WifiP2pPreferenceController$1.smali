.class public final Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mIsWifiDirectAllow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
