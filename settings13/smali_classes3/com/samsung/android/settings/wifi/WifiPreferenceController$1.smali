.class Lcom/samsung/android/settings/wifi/WifiPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiPreferenceController;->getWifiStateChangeReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiPreferenceController;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->-$$Nest$fgetmWifiEnablerPreference(Lcom/samsung/android/settings/wifi/WifiPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->-$$Nest$fgetmWifiEnablerPreference(Lcom/samsung/android/settings/wifi/WifiPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
