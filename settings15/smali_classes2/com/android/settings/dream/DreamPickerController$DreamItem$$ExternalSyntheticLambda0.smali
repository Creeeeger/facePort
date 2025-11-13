.class public final synthetic Lcom/android/settings/dream/DreamPickerController$DreamItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/dream/DreamPickerController$Callback;

    check-cast p1, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/settings/dream/DreamSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p0, p1, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/dream/DreamSettings;

    invoke-virtual {p0}, Lcom/android/settings/dream/DreamSettings;->updateComplicationsToggleVisibility()V

    return-void
.end method
