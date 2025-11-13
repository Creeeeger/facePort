.class public final synthetic Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    sget-object p0, Lcom/android/settings/homepage/TopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    check-cast p1, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/homepage/TopLevelMDESuggestionsPreferenceController;->updateFromGoodSettings()V

    return-void
.end method
