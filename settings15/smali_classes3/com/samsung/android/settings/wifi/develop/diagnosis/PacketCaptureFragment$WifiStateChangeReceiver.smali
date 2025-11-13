.class public final Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$WifiStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$WifiStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Updating display config on receiving broadcast "

    const-string v1, "PacketCaptureSettings"

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "wifi_state"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$WifiStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.android.server.wifi.stopcapture"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment$WifiStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/PacketCaptureFragment;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
