.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broadcast "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiSetupWizard"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 148
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$mupdateSimState(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    goto :goto_1

    .line 141
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misNetworkAvailable(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->checkAndUpdateButton(Z)V

    goto :goto_1

    .line 144
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiInternetAvailable:Z

    .line 145
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmWifiStateButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->updateButton(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fcd6bbb -> :sswitch_2
        -0x45e5283a -> :sswitch_1
        -0xdb21ee7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
