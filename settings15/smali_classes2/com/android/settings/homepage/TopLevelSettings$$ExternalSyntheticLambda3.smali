.class public final synthetic Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;


# instance fields
.field public final synthetic f$0:Landroid/content/res/ColorStateList;

.field public final synthetic f$1:Landroid/content/res/ColorStateList;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda3;->f$0:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda3;->f$1:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public final doForEach(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda3;->f$0:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda3;->f$1:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/android/settings/homepage/TopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    instance-of v1, p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;

    invoke-interface {p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;->getHelper()Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    move-result-object v1

    iput-object v0, v1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitleTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, v1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-interface {p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;->getHelper()Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    move-result-object p1

    iput-object p0, p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
