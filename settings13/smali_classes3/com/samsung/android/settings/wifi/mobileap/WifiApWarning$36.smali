.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;
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

    .line 866
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "TETH_010"

    const-string p2, "8058"

    .line 868
    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmAOSPWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 870
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_saved_state"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 871
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 872
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
