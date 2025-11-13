.class Lcom/android/settings/wifi/WifiSettings$10;
.super Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 2553
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 2556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiManager.SemWifiApSmartCallback()`s onStateChanged() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", MhsMac: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiSettings.AutoHotspot"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$10;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$maddAutoHotspotPreference(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method
