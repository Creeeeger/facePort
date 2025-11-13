.class public abstract Lcom/samsung/android/settings/gts/SettingsGtsProvider;
.super Lcom/samsung/android/gtscell/GtsCellProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mGtsCube:Lcom/samsung/android/settings/cube/gts/GtsCube;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/gts/SettingsGtsProvider;

    return-void
.end method


# virtual methods
.method public abstract getGroups()Ljava/util/List;
.end method

.method public final getGtsItemGroups(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->mGtsCube:Lcom/samsung/android/settings/cube/gts/GtsCube;

    sget-object v3, Lcom/samsung/android/settings/gts/GtsResources;->mResourceMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/gts/GtsResources;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/samsung/android/settings/gts/GtsResources;->mResourceMap:Ljava/util/Map;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/gts/GtsResources$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/cube/gts/GtsCube;->getGtsItemGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gts group size : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SettingsGtsProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/gts/GtsResources$GtsGroup;->getTitleResId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;

    invoke-direct {v3, v1}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    new-instance v4, Lcom/samsung/android/gtscell/data/GtsItemSupplier;

    invoke-virtual {v2}, Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;->getKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7}, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;I)V

    new-instance v7, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v7, v2, v8}, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;I)V

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/gtscell/data/GtsItemSupplier;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsSupplier;Lcom/samsung/android/gtscell/data/GtsSupplier;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/gtscell/data/GtsListBuilder;->add(Ljava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsListBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsItemSupplierGroupBuilder;->build()Lcom/samsung/android/gtscell/data/GtsItemSupplierGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object p1
.end method

.method public final isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onCreate()Z
    .locals 2

    const-string v0, "SettingsGtsProvider#onCreate"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/cube/gts/GtsCube;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/cube/gts/GtsCube;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->mGtsCube:Lcom/samsung/android/settings/cube/gts/GtsCube;

    const-string v0, "SettingsGtsProvider#super.onCreate"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/gtscell/GtsCellProvider;->onCreate()Z

    move-result p0

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return p0
.end method

.method public final setGtsItem(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsItem;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/ResultCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->mGtsCube:Lcom/samsung/android/settings/cube/gts/GtsCube;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/settings/cube/gts/GtsCube;->setGtsItem(Lcom/samsung/android/gtscell/data/GtsItem;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/ResultCallback;)V

    return-void
.end method
