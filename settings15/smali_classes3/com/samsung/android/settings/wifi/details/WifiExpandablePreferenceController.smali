.class public final Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# instance fields
.field public mAdvancedPref:Landroidx/preference/PreferenceCategory;

.field public mExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

.field public mExpanded:Z

.field public mExpanderPref:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public final mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

.field public final mSAScreenId:Ljava/lang/String;

.field public mSavedExpandedState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mSAScreenId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "expander"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanderPref:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "advanced"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mAdvancedPref:Landroidx/preference/PreferenceCategory;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "expander"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "saved_is_expanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mSavedExpandedState:Z

    :cond_0
    return-void
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v0, "1025"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanderPref:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;

    xor-int v1, p1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mAdvancedPref:Landroidx/preference/PreferenceCategory;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;->onSpread()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "WifiExpandablePrefCtrl"

    const-string v0, "A view is focused, do not hide keypad"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    :goto_0
    return p1
.end method

.method public final onResume()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mSavedExpandedState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanderPref:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mAdvancedPref:Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpandListener:Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController$WifiExpandListener;->onSpread()V

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mSavedExpandedState:Z

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "saved_is_expanded"

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiExpandablePreferenceController;->mExpanded:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
