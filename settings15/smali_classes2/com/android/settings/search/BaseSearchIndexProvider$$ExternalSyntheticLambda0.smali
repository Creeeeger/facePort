.class public final synthetic Lcom/android/settings/search/BaseSearchIndexProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object p0, p1, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    return-object p0
.end method
