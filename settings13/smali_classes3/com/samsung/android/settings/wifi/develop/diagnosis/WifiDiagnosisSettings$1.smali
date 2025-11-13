.class Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDiagnosisSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 112
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->-$$Nest$mupdateWifiEntries(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "newState"

    .line 115
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    .line 117
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    const-string v0, "supplicantError"

    .line 118
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    .line 116
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->-$$Nest$mupdateStepList(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;Landroid/net/wifi/SupplicantState;Z)V

    goto :goto_1

    :pswitch_2
    const-string p1, "networkInfo"

    .line 103
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network state changed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiDiagnosisSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 106
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1, p2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->-$$Nest$mupdateStepLog(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V

    .line 109
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;->-$$Nest$mupdateWifiEntries(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDiagnosisSettings;)V

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
