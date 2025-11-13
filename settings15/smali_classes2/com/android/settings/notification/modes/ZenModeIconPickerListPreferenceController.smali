.class public final Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAdapter:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;

.field public final mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field public final mIconOptionsProvider:Lcom/android/settings/notification/modes/IconOptionsProviderImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/notification/modes/IconOptionsProviderImpl;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 1

    const-string v0, "icon_list"

    invoke-direct {p0, p1, v0, p4}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p3, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;->mIconOptionsProvider:Lcom/android/settings/notification/modes/IconOptionsProviderImpl;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;->mAdapter:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;->mIconOptionsProvider:Lcom/android/settings/notification/modes/IconOptionsProviderImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;-><init>(Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;Lcom/android/settings/notification/modes/IconOptionsProviderImpl;)V

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;->mAdapter:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;

    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a07ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$AutoFitGridLayoutManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$AutoFitGridLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;->mAdapter:Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$IconAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public onIconSelected(I)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->saveMode(Ljava/util/function/Function;)Z

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerListPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 0

    return-void
.end method
