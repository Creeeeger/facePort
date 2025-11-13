.class public Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActionList:Ljava/util/HashMap;

.field public mCornerActions:Ljava/lang/String;

.field public mCornerPos:I

.field public final mCornerTitlesRes:[I

.field public mPauseAutoClickWithCorner:I

.field public mPreferences:Ljava/util/ArrayList;

.field public mResetMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const v0, 0x7f140093

    const v1, 0x7f140094

    const v2, 0x7f140095

    const v3, 0x7f140096

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerTitlesRes:[I

    return-void
.end method


# virtual methods
.method public final addAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17007e

    return p0
.end method

.method public final isInitState()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    aget-object v1, v0, v1

    const-string/jumbo v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    aget-object p0, v0, p0

    const-string/jumbo v0, "pause_resume_auto_click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->updatePreferencesState$3()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a095c

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mResetMenu:Landroid/view/MenuItem;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mResetMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->isInitState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_corner_actions"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "none:none:none:none"

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, 0x4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerTitlesRes:[I

    aget v6, v6, v3

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v3, v0

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_2
    iput v3, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accessibility_pause_auto_click_with"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mPauseAutoClickWithCorner:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mPreferences:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mActionList:Ljava/util/HashMap;

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_d

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v4, :cond_c

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v6, "send_sos_messages"

    const-string/jumbo v7, "talk_to_bixby"

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "screen_shot"

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_5
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-static {v4}, Lcom/android/settingslib/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_6
    const-string/jumbo v4, "ringtone_volume_up"

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "ringtone_volume_down"

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v4}, Lcom/android/settingslib/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSoftphone()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v4}, Lcom/android/settings/Utils;->isCMCAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_8
    const-string/jumbo v4, "screen_rotation"

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    const-string/jumbo v4, "sound_vibrate_mute"

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    const v4, 0x7f1400b0

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mActionList:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_c
    :goto_5
    add-int/2addr v1, v0

    goto/16 :goto_3

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_6
    array-length v4, v1

    if-ge v3, v4, :cond_f

    aget-object v4, v1, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_7
    if-ge v6, v5, :cond_e

    aget-object v7, v4, v6

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mActionList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v6, v0

    goto :goto_7

    :cond_e
    add-int/2addr v3, v0

    goto :goto_6

    :cond_f
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const-string v0, "CornerActionTypePickerFragment"

    const-string/jumbo v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a095c

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    aget-object v2, v0, v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mActionList:Ljava/util/HashMap;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_auto_action_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iget v3, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mPauseAutoClickWithCorner:I

    if-ne v3, v2, :cond_2

    const-string/jumbo v2, "pause_resume_auto_click"

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "none"

    :goto_2
    aput-object v2, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_corner_actions"

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "none:none:none:none"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_corner_action_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->updatePreferencesState$3()V

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const v2, 0x7f140098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "send_sos_messages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "emergency_gesture_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f142aa2

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    :goto_0
    const-string v0, "accessibility_corner_actions"

    const-string v3, "accessibility_corner_action_enabled"

    const-string/jumbo v4, "none:none:none:none"

    const-string v5, ":"

    if-eqz p2, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mActionList:Ljava/util/HashMap;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iget v3, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    aget-object v4, p2, v3

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->addAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-static {v5, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mResetMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->isInitState()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->updatePreferencesState$3()V

    return v1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mActionList:Ljava/util/HashMap;

    if-eqz p2, :cond_3

    iget v7, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_4

    iget v7, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    aget-object v8, v6, v7

    invoke-virtual {p0, v8, p1}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->addAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v7

    goto :goto_3

    :cond_4
    iget v7, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    aget-object v8, v6, v7

    new-instance v9, Ljava/util/ArrayList;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v2, :cond_5

    const-string/jumbo p1, "none"

    goto :goto_2

    :cond_5
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v10, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    aput-object p1, v6, v7

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-static {p1, v0, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mResetMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->isInitState()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez p2, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerActions:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->updatePreferencesState$3()V

    return v2
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->updatePreferencesState$3()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mResetMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->isInitState()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public final updatePreferencesState$3()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    instance-of v2, v1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mActionList:Ljava/util/HashMap;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    if-ne v2, v4, :cond_1

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "pause_resume_auto_click"

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "accessibility_auto_action_type"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mCornerPos:I

    iget v5, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mPauseAutoClickWithCorner:I

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v4, "category"

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/autoaction/CornerActionTypePickerFragment;->mActionList:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_4

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method
