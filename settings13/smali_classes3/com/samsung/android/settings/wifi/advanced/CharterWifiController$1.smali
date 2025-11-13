.class Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "CharterWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "CharterWifiController"

    const-string v0, "onReceive"

    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHA"

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$sfgetmIsCharterWifiNotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Feature is not supported in other carriers..."

    .line 131
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 136
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$misSimAbsent(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "SIM ABSENT detected!!! Turn off Charter\'s setting.."

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;->-$$Nest$msetCharterSetting(Lcom/samsung/android/settings/wifi/advanced/CharterWifiController;Z)V

    :cond_1
    return-void
.end method
