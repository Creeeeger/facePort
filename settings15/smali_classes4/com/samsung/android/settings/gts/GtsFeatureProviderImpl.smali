.class public final Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mResourceMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->mResourceMap:Ljava/util/Map;

    new-instance v0, Lcom/android/settingslib/search/GtsIndexableResources;

    invoke-direct {v0}, Lcom/android/settingslib/search/GtsIndexableResources;-><init>()V

    iget-object v0, v0, Lcom/android/settingslib/search/GtsIndexableResources;->mProviders:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/search/GtsIndexableData;

    iget-object v1, v1, Lcom/android/settingslib/search/GtsIndexableData;->mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    instance-of v2, v1, Lcom/android/settings/search/BaseSearchIndexProvider;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getGtsResourceGroup()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v1, p0, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->mResourceMap:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method
