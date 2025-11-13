.class public final Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->updateWifiEntries$2()V

    goto :goto_1

    :pswitch_1
    const-string p0, "newState"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    goto :goto_1

    :pswitch_2
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Network state changed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkDiagnosisSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, p2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->mSavedScannedTracker:Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;

    invoke-virtual {p1}, Lcom/samsung/android/wifitrackerlib/SavedScannedTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/NetworkDiagnosisSettings;->updateWifiEntries$2()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x147b62d9 -> :sswitch_2
        0xdeb41c0 -> :sswitch_1
        0x60e99352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
