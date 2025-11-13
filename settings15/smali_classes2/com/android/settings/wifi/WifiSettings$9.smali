.class public final Lcom/android/settings/wifi/WifiSettings$9;
.super Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$9;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemWifiManager.SemWifiApSmartCallback()`s onStateChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", MhsMac: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiSettings.AutoHotspot"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$9;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-boolean p1, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->addAutoHotspotPreference()V

    return-void
.end method
