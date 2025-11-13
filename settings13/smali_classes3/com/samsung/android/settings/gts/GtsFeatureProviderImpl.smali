.class public Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;
.super Ljava/lang/Object;
.source "GtsFeatureProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/settings/gts/GtsFeatureProvider;


# instance fields
.field private final mResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/gts/GtsGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VQQfJbZwP6sRhEMxHODdc0kOSvQ(Ljava/lang/String;Lcom/samsung/android/settings/gts/GtsGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->lambda$indexGtsResource$0(Ljava/lang/String;Lcom/samsung/android/settings/gts/GtsGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uwxkpIa9XTyUaanJC10P7tBpCvw(Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->addResource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->mResourceMap:Ljava/util/Map;

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->initialize()V

    return-void
.end method

.method private addResource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->mResourceMap:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->getGtsGroup(Ljava/lang/String;)Lcom/samsung/android/settings/gts/GtsGroup;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getGtsGroup(Ljava/lang/String;)Lcom/samsung/android/settings/gts/GtsGroup;
    .locals 4

    .line 56
    invoke-static {}, Lcom/samsung/android/settings/gts/GtsGroup;->values()[Lcom/samsung/android/settings/gts/GtsGroup;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 57
    invoke-virtual {v2}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private indexGtsResource(Lcom/android/settings/search/BaseSearchIndexProvider;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getGtsResourceGroup()Ljava/util/HashMap;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->mResourceMap:Ljava/util/Map;

    new-instance p1, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private initialize()V
    .locals 3

    .line 28
    new-instance v0, Lcom/android/settingslib/search/GtsIndexableResources;

    invoke-direct {v0}, Lcom/android/settingslib/search/GtsIndexableResources;-><init>()V

    .line 29
    invoke-virtual {v0}, Lcom/android/settingslib/search/GtsIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/search/GtsIndexableData;

    .line 32
    invoke-virtual {v1}, Lcom/android/settingslib/search/GtsIndexableData;->getSearchIndexProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    move-result-object v1

    .line 33
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->isValidProvider(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    check-cast v1, Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->indexGtsResource(Lcom/android/settings/search/BaseSearchIndexProvider;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isValidProvider(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)Z
    .locals 0

    .line 41
    instance-of p0, p1, Lcom/android/settings/search/BaseSearchIndexProvider;

    return p0
.end method

.method private static synthetic lambda$indexGtsResource$0(Ljava/lang/String;Lcom/samsung/android/settings/gts/GtsGroup;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / Gts : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GtsFeatureProviderImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
