.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotController.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 46
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 56
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->smart_tethering_internet_not_available:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->smart_tethering_nearby_can_not_available:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_5

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_ap_smart_tethering_family_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 69
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_ap_smart_tethering_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_5
    :goto_0
    return-void
.end method
