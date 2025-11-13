.class public Lcom/samsung/android/settings/accessibility/hearing/HearingEnhancementsFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CATEGORY_KEY_LIST:Ljava/util/List;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "hearing_category_1"

    const-string v1, "hearing_category_2"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/HearingEnhancementsFragment;->CATEGORY_KEY_LIST:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/HearingEnhancementsFragment$1;

    const v1, 0x7f17000e

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/HearingEnhancementsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/AccessibilityDashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "A11y_Hearing"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfa0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17000e

    return p0
.end method

.method public final updatePreferenceStates()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/HearingEnhancementsFragment;->CATEGORY_KEY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/Preference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_2
    xor-int/2addr v2, v5

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method
