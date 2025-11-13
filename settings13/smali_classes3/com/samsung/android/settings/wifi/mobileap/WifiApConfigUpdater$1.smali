.class Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;
.super Ljava/lang/Object;
.source "WifiApConfigUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->updateConfigurationToFramework(Landroid/net/wifi/SoftApConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 74
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$fputmOldSoftApConfig(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;Landroid/net/wifi/SoftApConfiguration;)V

    .line 75
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$fgetmNewSoftApConfig(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 76
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$fgetmNewSoftApConfig(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$mshouldConfigChangedBroadcastToBeSent(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 77
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$msendConfigChangedBroadcastToSmartTethering(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)V

    :cond_0
    const-wide/16 v0, 0x64

    .line 80
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 83
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error InterruptedException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 86
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$mupdateStatus(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)V

    .line 88
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$fgetmNewSoftApConfig(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->-$$Nest$mresetWifiAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method
