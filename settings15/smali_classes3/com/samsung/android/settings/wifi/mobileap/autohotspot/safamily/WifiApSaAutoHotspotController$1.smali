.class public final Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotSwitchEnabler$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

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

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    const p1, 0x7f142cc4

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    const p1, 0x7f142cc7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    const p1, 0x7f1433f7

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaAutoHotspotController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    const p1, 0x7f1433fc

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_5
    :goto_0
    return-void
.end method
