.class public Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontSizeSupportPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f1701a1

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string/jumbo p1, "sec_font_size_preview"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    sput-object p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo p1, "sec_font_size_preview_bottom_padding"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    sput-object p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewBottomPaddingPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string/jumbo p1, "sec_font_style"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    sput-object p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    const-string p1, "bold_text"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    sput-object p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

    const-string/jumbo p1, "sec_font_size_layout_dummy_item"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferenceDummyItem:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method
