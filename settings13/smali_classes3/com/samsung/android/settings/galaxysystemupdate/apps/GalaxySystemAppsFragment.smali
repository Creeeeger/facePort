.class public Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GalaxySystemAppsFragment.java"


# instance fields
.field private adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

.field private context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$da5CUClLSNLbpeCeNTDjZWISIbA(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;Ljava/util/ArrayList;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->lambda$showtPackageList$0(Ljava/util/ArrayList;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$showtPackageList$0(Ljava/util/ArrayList;Landroid/view/View;I)Z
    .locals 0

    .line 109
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/ApexPackageVo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->showDeleteActivity(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private showDeleteActivity(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkg_name"

    .line 83
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 88
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->galaxy_system_apps:I

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const p0, 0xeb14

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->getMetricsCategory()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->context:Landroid/content/Context;

    .line 44
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "There is no looper in the calling thread."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 60
    sget v0, Lcom/android/settings/R$string;->common_edit:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/GalaxySystemAppsInfoManager;->getActiveApexList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 52
    sget p2, Lcom/android/settings/R$layout;->sec_galaxy_system_apps_package:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->showtPackageList(Landroid/view/View;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->showDeleteActivity(Ljava/lang/String;)V

    return v0
.end method

.method showtPackageList(Landroid/view/View;)V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/data/GalaxySystemAppsInfoManager;->getActiveApexList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    sget v2, Lcom/android/settings/R$id;->text_no_item:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    sget v3, Lcom/android/settings/R$id;->galaxy_system_package_list:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    new-instance v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    .line 106
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;->adapter:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;

    new-instance v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter;->setOnItemClickListener(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsAdapter$OnItemClickListener;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
