.class public Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public installedAppsManager:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x17d4

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17000f

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment;->installedAppsManager:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

    new-instance p1, Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment;)V

    iput-object p1, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->listener:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$OnInstalledAppsChangedListener;

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment;->installedAppsManager:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilitySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "alreadyInstalledApps"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment;->installedAppsManager:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->getInstalledAccessibilityList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment;->updatePreferences(Ljava/util/List;)V

    return-void
.end method

.method public final updatePreferences(Ljava/util/List;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const v2, 0x7f0a0a84

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    const p0, 0x7f0a041d

    invoke-virtual {v0, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const-string p1, "layout_inflater"

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0d04c3

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a0a87

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f141238

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    const p1, 0x7f0a0a89

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_8

    const p1, 0x7f141237

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment;->installedAppsManager:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->getNewAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/install/InstalledAppsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    const v3, 0x7f14011d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-lez p1, :cond_8

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/RestrictedPreference;

    if-eqz p0, :cond_8

    instance-of p1, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference;

    const-string v0, "LastInList : "

    if-eqz p1, :cond_7

    check-cast p0, Lcom/android/settings/accessibility/AccessibilityServicePreference;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccessibilityServicePreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference;->isLastInList:Z

    goto :goto_1

    :cond_7
    instance-of p1, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;

    if-eqz p1, :cond_8

    check-cast p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccessibilityActivityPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->isLastInList:Z

    :cond_8
    :goto_1
    return-void
.end method
