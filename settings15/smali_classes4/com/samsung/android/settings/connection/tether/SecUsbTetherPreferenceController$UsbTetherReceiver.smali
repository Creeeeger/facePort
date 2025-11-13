.class public final Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive() :"

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-static {v1, p1, v0, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fputmMassStorageActive(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fputmMassStorageActive(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    goto :goto_0

    :cond_2
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    const-string v0, "connected"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fputmUsbConnected(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fgetmUsbConnected(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TMB"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "ASR"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$mremoveDialog(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)V

    goto :goto_0

    :cond_4
    const-string p2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    :cond_5
    :goto_0
    return-void
.end method
