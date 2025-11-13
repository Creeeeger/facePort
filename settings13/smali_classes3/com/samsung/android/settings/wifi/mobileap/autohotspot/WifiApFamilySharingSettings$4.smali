.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$4;
.super Ljava/lang/Object;
.source "WifiApFamilySharingSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->setAddAllowedDeviceButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 338
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fgetmAddAllowedDeviceButtonClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$fputmAddAllowedDeviceButtonClicked(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;Z)V

    .line 340
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAllowedDeviceList;

    .line 342
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_ap_mhs_add_allowed_device_title:I

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return v0
.end method
