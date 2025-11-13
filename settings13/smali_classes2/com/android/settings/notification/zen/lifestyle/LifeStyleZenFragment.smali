.class public Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LifeStyleZenFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroid/app/Application;",
            "Lcom/android/settings/dashboard/DashboardFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v1, Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;

    const-string v2, "lifestyle_mode_behavior_people"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeBypassingAppsPreferenceController;

    invoke-direct {v1, p0, p3, p4, p1}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenModeBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p3, Lcom/android/settings/notification/zen/LifeStyleZenModeSettingsHeaderPreferenceController;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/notification/zen/LifeStyleZenModeSettingsHeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance p3, Lcom/android/settings/notification/zen/LifeStyleZenModeEnableNowPreferenceController;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/settings/notification/zen/LifeStyleZenModeEnableNowPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleZenFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LifeStyleZenFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 33
    sget p0, Lcom/android/settings/R$xml;->lifestyle_dnd_index:I

    return p0
.end method
