.class public abstract Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final mCandidates:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;->mCandidates:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bindPreference(Landroidx/preference/TwoStatePreference;Ljava/lang/String;Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p3, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p3, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public abstract getCandidates()Ljava/util/List;
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPrefInstance()Landroidx/preference/TwoStatePreference;
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;->mCandidates:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;->getCandidates()Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;->mCandidates:Ljava/util/Map;

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mKey:Ljava/lang/String;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;->getPrefInstance()Landroidx/preference/TwoStatePreference;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;->mKey:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;->bindPreference(Landroidx/preference/TwoStatePreference;Ljava/lang/String;Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_3
    return-void
.end method
