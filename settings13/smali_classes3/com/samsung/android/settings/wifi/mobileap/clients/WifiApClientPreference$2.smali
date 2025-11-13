.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;
.super Ljava/lang/Object;
.source "WifiApClientPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/wifi/SemWifiApClientDetails;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->-$$Nest$fgetmDeviceName(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_key_connected_client_name_detail"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->-$$Nest$fgetmMac(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_key_connected_client_mac_detail"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xd48

    .line 126
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
