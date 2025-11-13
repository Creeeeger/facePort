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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->comparators:Ljava/util/Map;

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V
    .locals 2
    .param p1, "baseFactory"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseFactory"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->comparators:Ljava/util/Map;

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->getCreatorRegistry()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    return-void
.end method

.method static synthetic blacklist lambda$addDefaultCreators$0(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 5
    .param p0, "factory"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p2, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 54
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 56
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 58
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferChannelSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;"
        }
    .end annotation

    .line 87
    .local p1, "bufferChannelSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    .line 88
    return-object p0
.end method

.method public blacklist addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 2
    .param p2, "creator"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "creator"
        }
    .end annotation

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

    .line 75
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    return-object p0
.end method

.method public blacklist addCreatorComparator(Ljava/lang/Class;Ljava/util/Comparator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "comparator"
        }
    .end annotation

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

    .line 82
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->comparators:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object p0
.end method

.method public blacklist addDefaultCreators()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 3

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "pluginFilterCreators":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;>;"
    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    const-class v2, Lcom/samsung/android/sume/core/filter/PluginFilter;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    const-class v2, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v1, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/ParallelFilterCreator;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    .line 45
    const-class v1, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/SequentialFilterCreator;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/SequentialFilterCreator;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    .line 46
    const-class v1, Lcom/samsung/android/sume/core/filter/NNFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/NNFilterCreator;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    .line 47
    const-class v1, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/CodecFilterCreator;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    .line 52
    const-class v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->addCreator(Ljava/lang/Class;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;

    .line 61
    return-object p0
.end method

.method public blacklist addPluginStore(Lcom/samsung/android/sume/core/plugin/PluginStore;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 1
    .param p1, "store"    # Lcom/samsung/android/sume/core/plugin/PluginStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object p0
.end method

.method public varargs blacklist addPluginStore([Lcom/samsung/android/sume/core/plugin/PluginStore;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    .locals 2
    .param p1, "stores"    # [Lcom/samsung/android/sume/core/plugin/PluginStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stores"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    return-object p0
.end method

.method public blacklist build()Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->comparators:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 97
    new-instance v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->pluginStores:Ljava/util/List;

    invoke-static {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore;->of(Ljava/util/List;)Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;-><init>(Ljava/util/Map;Lcom/samsung/android/sume/core/plugin/PluginStore;)V

    .line 99
    .local v0, "factory":Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->bufferChannelSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->setBufferChannelSupplier(Ljava/util/function/Supplier;)V

    .line 102
    :cond_0
    return-object v0
.end method

.method synthetic blacklist lambda$build$1$com-samsung-android-sume-core-filter-factory-MediaFilterFactory$Builder(Ljava/lang/Class;Ljava/util/Comparator;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/util/Comparator;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 95
    :cond_0
    return-void
.end method
