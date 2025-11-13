.class public final Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
.super Ljava/lang/Object;
.source "MediaFilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist bufferChannelSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist comparators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist creators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist pluginStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/plugin/PluginStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->comparators:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->comparators:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->getCreatorRegistry()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic blacklist lambda$addDefaultCreators$0(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ndesc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist addBufferChannelSupplier(Ljava/util/function/Supplier;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public blacklist addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ")",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public blacklist addCreatorComparator(Ljava/lang/Class;Ljava/util/Comparator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->comparators:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist addDefaultCreators()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    const-class v2, Lcom/samsung/android/sume/core/filter/PluginFilter;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    const-class v2, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    const-class v1, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/SequentialFilterCreator;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/SequentialFilterCreator;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    const-class v1, Lcom/samsung/android/sume/core/filter/NNFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    const-class v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    const-class v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    return-object p0
.end method

.method public blacklist addPluginStore(Lcom/samsung/android/sume/core/plugin/PluginStore;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs blacklist addPluginStore([Lcom/samsung/android/sume/core/plugin/PluginStore;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public blacklist build()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->comparators:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    invoke-static {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore;->of(Ljava/util/List;)Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;-><init>(Ljava/util/Map;Lcom/samsung/android/sume/core/plugin/PluginStore;)V

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->setBufferChannelSupplier(Ljava/util/function/Supplier;)V

    :cond_0
    return-object v0
.end method

.method synthetic blacklist lambda$build$1$com-samsung-android-sume-core-filter-factory-MediaFilterFactory$Builder(Ljava/lang/Class;Ljava/util/Comparator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method
