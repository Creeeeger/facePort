.class Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoWifiPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigureWifiSettings.AutoWifi"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.location.MODE_CHANGED"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.wifi.AUTO_WIFI_SCAN_STATE_CHANGED"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;

    const/4 v0, 0x1

    const-string v1, "autoWifiScanAvailable"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->-$$Nest$fputmWifiScanState(Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;Z)V

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->-$$Nest$fgetmAutoWifi(Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->-$$Nest$fgetmAutoWifi(Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_2
    :goto_1
    return-void
.end method
