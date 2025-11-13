.class public Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mContentObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

.field public mCustomEndController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

.field public mCustomStartController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment$1;

    const v1, 0x7f170081

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dark_theme_start_time"

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mCustomStartController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    new-instance v0, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dark_theme_end_time"

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mCustomEndController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mCustomStartController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mCustomEndController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final getDialogMetricsCategory(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x722

    return p0

    :cond_1
    const/16 p0, 0x721

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DarkModeSettingsFrag"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a2

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170081

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-direct {v0, p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mContentObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mCustomStartController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->getDialog()Landroid/app/TimePickerDialog;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mCustomEndController:Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/display/darkmode/DarkModeCustomPreferenceController;->getDialog()Landroid/app/TimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dark_theme_end_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v1

    :cond_0
    const-string v0, "dark_theme_start_time"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mContentObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    new-instance v1, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/display/darkmode/DarkModeObserver;->subscribe(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeSettingsFragment;->mContentObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-virtual {p0}, Lcom/android/settings/display/darkmode/DarkModeObserver;->unsubscribe()V

    return-void
.end method
