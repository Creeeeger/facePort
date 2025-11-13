.class public final Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
.super Ljava/lang/Object;
.source "MediaFilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$Builder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


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

.field private final blacklist pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Map;Lcom/samsung/android/sume/core/plugin/PluginStore;)V
    .locals 0
    .param p2, "pluginStore"    # Lcom/samsung/android/sume/core/plugin/PluginStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "creatorRegistry",
            "pluginStore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ">;>;",
            "Lcom/samsung/android/sume/core/plugin/PluginStore;",
            ")V"
        }
    .end annotation

    .line 110
    .local p1, "creatorRegistry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    .line 112
    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->init()V

    .line 115
    return-void
.end method

.method private blacklist addAdditionalFilters(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1
    .param p1, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    .line 150
    .local v0, "descriptor":Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    return-object p1
.end method

.method private blacklist init()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    const-class v1, Lcom/samsung/android/sume/core/filter/PluginFilter;

    .line 119
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    const-class v2, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;

    .line 120
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda0;-><init>()V

    .line 121
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda2;-><init>()V

    .line 125
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;-><init>()V

    .line 126
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;)V

    .line 127
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 128
    return-void
.end method

.method static synthetic blacklist lambda$init$0(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Z
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 121
    instance-of v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    return v0
.end method

.method static synthetic blacklist lambda$init$2(Ljava/util/List;)Z
    .locals 2
    .param p0, "e"    # Ljava/util/List;

    .line 125
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic blacklist lambda$newFilter$4(Ljava/util/List;)Ljava/util/Optional;
    .locals 1
    .param p0, "e"    # Ljava/util/List;

    .line 155
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$newFilter$6(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Ljava/lang/RuntimeException;
    .locals 3
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to create filter: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", descriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore;->clear()V

    .line 145
    return-void
.end method

.method public blacklist getBufferChannelSupplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->bufferChannelSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method blacklist getCreatorRegistry()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ">;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    return-object v0
.end method

.method synthetic blacklist lambda$init$1$com-samsung-android-sume-core-filter-factory-MediaFilterFactory(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)V
    .locals 2
    .param p1, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->setPluginStore(Lcom/samsung/android/sume/core/plugin/PluginStore;)V

    return-void
.end method

.method synthetic blacklist lambda$init$3$com-samsung-android-sume-core-filter-factory-MediaFilterFactory(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)V
    .locals 2
    .param p1, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->prepare(Ljava/util/Map;)V

    return-void
.end method

.method synthetic blacklist lambda$newFilter$5$com-samsung-android-sume-core-filter-factory-MediaFilterFactory(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p2, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p3, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 156
    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;->newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->addAdditionalFilters(Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newFilter(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p2, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "successor"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->newFilter(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0
.end method

.method blacklist newFilter(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 2
    .param p2, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p3, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "descriptor",
            "successor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ")",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;"
        }
    .end annotation

    .line 154
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->creators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;-><init>()V

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p3}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Class;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 154
    return-object v0
.end method

.method blacklist setBufferChannelSupplier(Ljava/util/function/Supplier;)V
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
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "bufferChannelSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->bufferChannelSupplier:Ljava/util/function/Supplier;

    .line 140
    return-void
.end method
