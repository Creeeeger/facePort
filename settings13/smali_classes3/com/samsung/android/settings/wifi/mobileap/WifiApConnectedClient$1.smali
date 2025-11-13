.class Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$1;
.super Ljava/lang/Object;
.source "WifiApConnectedClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 62
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->-$$Nest$fgetmDeviceName(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_key_connected_client_name_detail"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->-$$Nest$fgetmMac(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_key_connected_client_mac_detail"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xd48

    .line 66
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
