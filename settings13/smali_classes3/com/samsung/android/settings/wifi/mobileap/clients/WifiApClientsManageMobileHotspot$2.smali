.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiApClientsManageMobileHotspot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast Received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->refreshConnectedPreferenceCategory()V

    goto :goto_0

    :cond_0
    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$fgetmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$fgetmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$fgetmDataLimitDialog(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
