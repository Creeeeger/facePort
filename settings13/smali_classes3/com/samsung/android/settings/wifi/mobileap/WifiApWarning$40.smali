.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 958
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmAOSPWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    .line 959
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmAOSPWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v1, 0xd

    if-ne p2, v1, :cond_0

    .line 962
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p2}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_0
    const-string p2, "TETH_010"

    const-string v1, "8056"

    .line 964
    invoke-static {p2, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 967
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmAOSPWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 969
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_saved_state"

    .line 970
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 972
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 973
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    :cond_2
    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string p2, "VZW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmWifiDisableWarnDoNotShowAgain(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 981
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_3

    .line 982
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fputmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)V

    .line 983
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    .line 984
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 985
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method
