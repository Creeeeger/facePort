.class public final synthetic Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    sget-object p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    instance-of p0, p1, Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;

    return p0
.end method
