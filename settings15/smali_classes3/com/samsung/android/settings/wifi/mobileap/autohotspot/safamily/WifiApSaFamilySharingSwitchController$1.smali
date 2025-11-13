.class public final Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmOnFamilySwitchStateChangeListener(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmOnFamilySwitchStateChangeListener(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchEnabler$OnStateChangeListener;->onStateChanged(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Family Sharing onStateChanged() - resultCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmWifiApSaFamilySharingSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmWifiApSaFamilySharingSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmWifiApSaFamilySharingSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f142966

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->isSupportFamilyService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmWifiApSaFamilySharingSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    const-string p1, "Family service is not supported currently"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    if-nez p1, :cond_4

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f142cc4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/SaFamilyUtils;->getFamilyGroupId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f143387

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "smart_tethering_family_count"

    invoke-static {p1, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f120068

    invoke-virtual {p1, v3, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;->-$$Nest$fgetmWifiApSaFamilySharingSwitchPreference(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/safamily/WifiApSaFamilySharingSwitchController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
