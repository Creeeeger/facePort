.class public final Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "onReceive"

    const-string v0, "CharterWifiController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CHA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$sfgetmIsCharterWifiNotSupported()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "Feature is not supported in other carriers..."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$misSimAbsent(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SIM ABSENT detected!!! Turn off Charter\'s setting.."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$msetCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Z)V

    :cond_1
    return-void
.end method
