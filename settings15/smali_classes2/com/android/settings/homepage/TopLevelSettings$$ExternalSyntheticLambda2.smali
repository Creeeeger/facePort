.class public final synthetic Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/TopLevelSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/TopLevelSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/homepage/TopLevelSettings;

    iput-boolean p2, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final doForEach(Landroidx/preference/Preference;)V
    .locals 3

    sget-object v0, Lcom/android/settings/homepage/TopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_added_footer_preference"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean p0, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;->f$1:Z

    if-eqz p0, :cond_0

    const v1, 0x7f0d0ae7

    goto :goto_0

    :cond_0
    const v1, 0x7f0d0920

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    if-eqz p0, :cond_1

    const/16 v1, 0xf

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p0, :cond_2

    const p0, 0x7f070dc2

    goto :goto_2

    :cond_2
    const p0, 0x7f070be8

    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    :cond_3
    return-void
.end method
