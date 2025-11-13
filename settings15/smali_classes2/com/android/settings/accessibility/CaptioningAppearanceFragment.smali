.class public Lcom/android/settings/accessibility/CaptioningAppearanceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settings/accessibility/CaptioningAppearanceFragment$1;

    const v1, 0x7f17006f

    const-string v2, "com.android.settings.accessibility.CaptioningPropertiesFragment"

    const-string v3, "captioning_appearance"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/base/search/AccessibilityBaseSearchIndexProvider;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accessibility/CaptioningAppearanceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptioningAppearanceFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71b

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17006f

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-class p1, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/CaptioningPreviewPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
