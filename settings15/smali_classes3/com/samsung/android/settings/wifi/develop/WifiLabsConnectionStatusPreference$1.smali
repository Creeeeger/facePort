.class public final Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getPrivilegedConnectedNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->launchNetworkDetailsFragment(Ljava/lang/String;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getPrivilegedConnectedNetwork()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->launchNetworkDetailsFragment(Ljava/lang/String;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
