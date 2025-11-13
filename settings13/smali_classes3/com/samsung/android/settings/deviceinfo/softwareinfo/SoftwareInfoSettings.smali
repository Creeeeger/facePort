.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SoftwareInfoSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_software_info_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance p2, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 91
    invoke-static {p1, v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SoftwareInfoSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x12c9

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 114
    sget p0, Lcom/android/settings/R$xml;->sec_software_info_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    const-class p1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 49
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->setHost(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    return-void
.end method
