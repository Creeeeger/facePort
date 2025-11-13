.class public Lcom/samsung/android/settings/wifi/advanced/WifiControlHistory;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiControlHistory.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final mScreenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistory;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, "WIFI_250"

    .line 36
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistory;->mScreenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiControlHistory"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x152

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 60
    sget p0, Lcom/android/settings/R$xml;->sec_wifi_control_history:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const-string v2, "wifi_tips_notification"

    .line 52
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    const-string p1, "WIFI_250"

    const-string v1, "1253"

    .line 53
    invoke-static {p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string p0, "WIFI_250"

    .line 73
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 67
    const-class v1, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/advanced/WifiControlPackagePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
