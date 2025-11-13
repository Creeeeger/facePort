.class public Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public context:Landroid/content/Context;

.field public final switchChangeListener:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->switchChangeListener:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static createCandidates(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment$RadioButtonCandidateInfo;

    const v2, 0x7f141853

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v3, "mono_audio_type:connected"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment$RadioButtonCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment$RadioButtonCandidateInfo;

    const v2, 0x7f141852

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const-string/jumbo v2, "mono_audio_type:all"

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment$RadioButtonCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/base/widget/DescriptionPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f141850

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->createCandidates(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mono_audio_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "mono_audio_type:connected"

    return-object p0

    :cond_0
    const-string/jumbo p0, "mono_audio_type:all"

    return-object p0
.end method

.method public final getMainSwitchChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->switchChangeListener:Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment$$ExternalSyntheticLambda0;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfad

    return p0
.end method

.method public final getObservableUriList()Ljava/util/List;
    .locals 2

    const-string p0, "master_mono"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v0, "mono_audio_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "all_sound_off"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "mono_audio_type:connected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "mono_audio_type"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v0
.end method

.method public final updatePreferenceStates()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "master_mono"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityRadioButtonPickerFragment;->mainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_2

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioFragment;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCheckedState$2(Ljava/lang/String;)V

    return-void
.end method
