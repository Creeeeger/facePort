.class Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "NotifyOpenNetworksPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 66
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;->-$$Nest$fgetmNotifyOpenNetworks(Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;->-$$Nest$fgetmNotifyOpenNetworks(Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;->-$$Nest$fgetmNotifyOpenNetworks(Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;->-$$Nest$fgetmNotifyOpenNetworks(Lcom/samsung/android/settings/wifi/advanced/NotifyOpenNetworksPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
