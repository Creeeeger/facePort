.class public Lcom/android/settings/dream/DreamSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public final mCallback:Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;

.field public mComplicationsTogglePreference:Landroidx/preference/Preference;

.field public mDreamHomeControlsPreferenceController:Lcom/android/settings/dream/DreamHomeControlsPreferenceController;

.field public mDreamPickerController:Lcom/android/settings/dream/DreamPickerController;

.field public mHomeControllerTogglePreference:Landroidx/preference/Preference;

.field public mPreviewButton:Landroid/widget/Button;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/dream/DreamSettings$SearchIndexProvider;

    const v1, 0x7f170099

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/dream/DreamSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/dream/DreamSettings;)V

    iput-object v0, p0, Lcom/android/settings/dream/DreamSettings;->mCallback:Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;

    return-void
.end method

.method public static getSummaryTextFromBackend(Lcom/android/settingslib/dream/DreamBackend;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f142042

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p0, 0x7f142041

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/dream/DreamSettings;->mDreamPickerController:Lcom/android/settings/dream/DreamPickerController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/dream/DreamPickerController;

    invoke-direct {v1, p1}, Lcom/android/settings/dream/DreamPickerController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dream/DreamSettings;->mDreamPickerController:Lcom/android/settings/dream/DreamPickerController;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dream/DreamSettings;->mDreamHomeControlsPreferenceController:Lcom/android/settings/dream/DreamHomeControlsPreferenceController;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/dream/DreamHomeControlsPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/dream/DreamHomeControlsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend;)V

    iput-object v1, p0, Lcom/android/settings/dream/DreamSettings;->mDreamHomeControlsPreferenceController:Lcom/android/settings/dream/DreamHomeControlsPreferenceController;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dream/DreamSettings;->mDreamPickerController:Lcom/android/settings/dream/DreamPickerController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/dream/DreamSettings;->mDreamHomeControlsPreferenceController:Lcom/android/settings/dream/DreamHomeControlsPreferenceController;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/settings/dream/WhenToDreamPreferenceController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110158

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/dream/WhenToDreamPreferenceController;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DreamSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2f

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170099

    return p0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dream/DreamSettings;ZI)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/settings/dream/DreamSettings;->updateComplicationsToggleVisibility()V

    iget-object p1, p0, Lcom/android/settings/dream/DreamSettings;->mPreviewButton:Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/dream/DreamSettings;->mPreviewButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dream/DreamSettings;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p1

    const-string v0, "dream_complications_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/DreamSettings;->mComplicationsTogglePreference:Landroidx/preference/Preference;

    const-string v0, "dream_home_controls_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/DreamSettings;->mHomeControllerTogglePreference:Landroidx/preference/Preference;

    const-string v0, "dream_main_settings_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/MainSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dream/DreamSettings;ZI)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/settings/dream/DreamSettings;->updateComplicationsToggleVisibility()V

    iget-object p1, p0, Lcom/android/settings/dream/DreamSettings;->mDreamPickerController:Lcom/android/settings/dream/DreamPickerController;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/dream/DreamSettings;->mCallback:Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0}, Lcom/android/settings/dream/DreamPickerController;->addCallback(Lcom/android/settings/dream/DreamPickerController$Callback;)V

    :cond_1
    return-void
.end method

.method public final onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0217

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/dream/DreamSettings;->mPreviewButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/dream/DreamSettings;->mPreviewButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/dream/DreamSettings;->mPreviewButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/dream/DreamBackend;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/DreamSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object p1, p0, Lcom/android/settings/dream/DreamSettings;->mPreviewButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dream/DreamSettings;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/settings/dream/DreamSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dream/DreamSettings;->mDreamPickerController:Lcom/android/settings/dream/DreamPickerController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/dream/DreamSettings;->mCallback:Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lcom/android/settings/dream/DreamPickerController;->removeCallback(Lcom/android/settings/dream/DreamPickerController$Callback;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public setDreamHomeControlsPreferenceController(Lcom/android/settings/dream/DreamHomeControlsPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dream/DreamSettings;->mDreamHomeControlsPreferenceController:Lcom/android/settings/dream/DreamHomeControlsPreferenceController;

    return-void
.end method

.method public setDreamPickerController(Lcom/android/settings/dream/DreamPickerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dream/DreamSettings;->mDreamPickerController:Lcom/android/settings/dream/DreamPickerController;

    return-void
.end method

.method public final updateComplicationsToggleVisibility()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/dream/DreamSettings;->mDreamPickerController:Lcom/android/settings/dream/DreamPickerController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/dream/DreamPickerController;->getActiveDreamInfo()Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dream/DreamSettings;->mComplicationsTogglePreference:Landroidx/preference/Preference;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v5, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->supportsComplications:Z

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/dream/DreamSettings;->mHomeControllerTogglePreference:Landroidx/preference/Preference;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->dreamCategory:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/dream/DreamSettings;->mDreamHomeControlsPreferenceController:Lcom/android/settings/dream/DreamHomeControlsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/dream/DreamHomeControlsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_4

    move v3, v4

    :cond_4
    iget-object p0, p0, Lcom/android/settings/dream/DreamSettings;->mHomeControllerTogglePreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    return-void
.end method
