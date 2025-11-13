.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

.field public final mDevelopEnabled:Landroid/net/Uri;

.field public final mDeveloperSettingsObserver:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$1;

    const v1, 0x7f1701f5

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, "development_settings_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->mDevelopEnabled:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$2;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->mDeveloperSettingsObserver:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$2;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SoftwareInfoSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x12c9

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701f5

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->setHost(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SettingsLib/MinorModeUtils"

    const-string v2, "develop options restriction:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "get_enable_developer_mode_restrict"

    const-string v2, "enable_developer_mode_restrict"

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/MinorModeUtils;->isCHNMinorModeRestrictionEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->mDevelopEnabled:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->mDeveloperSettingsObserver:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$2;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SettingsLib/MinorModeUtils"

    const-string v2, "develop options restriction:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "get_enable_developer_mode_restrict"

    const-string v2, "enable_developer_mode_restrict"

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/MinorModeUtils;->isCHNMinorModeRestrictionEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->mDeveloperSettingsObserver:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$2;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
