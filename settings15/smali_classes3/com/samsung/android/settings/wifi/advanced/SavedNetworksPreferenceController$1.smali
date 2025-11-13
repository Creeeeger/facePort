.class public final Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->-$$Nest$fgetmManageNetwork(Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->-$$Nest$fgetmManageNetwork(Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->-$$Nest$fgetmManageNetwork(Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;->-$$Nest$fgetmManageNetwork(Lcom/samsung/android/settings/wifi/advanced/SavedNetworksPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
