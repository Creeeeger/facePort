.class public final Lcom/samsung/android/settings/general/AutofillPicker$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p0}, Lcom/samsung/android/settings/general/AutofillPicker;->buildAutofillPreferenceControllers(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/settings/general/AutofillPicker;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/credentials/CredentialManager;->isServiceEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f17017e

    goto :goto_0

    :cond_0
    const p1, 0x7f17017d

    :goto_0
    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
