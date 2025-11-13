.class public Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SecFontSizePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontSizeSupportPreferenceFragment"
.end annotation


# instance fields
.field private isCompletePreferences:Z

.field private mSecFontSizePreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1091
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->mSecFontSizePreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    const/4 v0, 0x0

    .line 1093
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->isCompletePreferences:Z

    return-void
.end method

.method private setFontPreferences(Ljava/lang/String;)V
    .locals 1

    .line 1110
    sget v0, Lcom/android/settings/R$xml;->sec_font_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "sec_font_style"

    .line 1112
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$sfputmFontStylePreference(Landroidx/preference/SecPreferenceScreen;)V

    const-string p1, "bold_text"

    .line 1113
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$sfputmBoldFontPreference(Landroidx/preference/SecSwitchPreference;)V

    const-string p1, "sec_font_size_preview"

    .line 1114
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$sfputmLayoutPreference(Lcom/android/settingslib/widget/LayoutPreference;)V

    const-string p1, "sec_font_size_layout_padding1"

    .line 1115
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$sfputmSecPreferencePaddingForPortrait(Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;)V

    const-string p1, "sec_font_size_seek_bar_controller"

    .line 1116
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$sfputmSeekBarControllerPreference(Lcom/android/settingslib/widget/LayoutPreference;)V

    const-string p1, "sec_font_size_layout_padding2"

    .line 1117
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$sfputmSecPreferencePaddingForMultiWindow(Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;)V

    const-string p1, "sec_font_size_layout_dummy_item"

    .line 1118
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$sfputmSecPreferenceDummyItem(Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;)V

    const/4 p1, 0x1

    .line 1120
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->isCompletePreferences:Z

    return-void
.end method


# virtual methods
.method getCompletePreferences()Z
    .locals 0

    .line 1096
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->isCompletePreferences:Z

    return p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1105
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->setFontPreferences(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1134
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->isCompletePreferences:Z

    const/4 v0, 0x0

    .line 1135
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->mSecFontSizePreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    .line 1136
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1125
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 1126
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->mSecFontSizePreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$misViewCreated(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->mSecFontSizePreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$msetFontSizePreviewLayoutOnCreateView(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    .line 1128
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->mSecFontSizePreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->-$$Nest$msetPreferenceOnResume(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_0
    return-void
.end method

.method setParent(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->mSecFontSizePreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    return-void
.end method
