.class Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;
.super Ljava/lang/Object;
.source "MediaFilterCreatorChain.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;
    }
.end annotation


# instance fields
.field private blacklist creators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist descriptorFinder:Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;

.field private final blacklist types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor blacklist <init>([Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 16
    .local p1, "types":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->types:Ljava/util/List;

    .line 18
    return-void
.end method

.method static synthetic blacklist lambda$newFilter$6(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1
    .param p0, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p1, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;

    .line 46
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;->find(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$prepare$0(Ljava/util/Map;Ljava/lang/Enum;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;
    .locals 2
    .param p0, "registry"    # Ljava/util/Map;
    .param p1, "e"    # Ljava/lang/Enum;

    .line 26
    nop

    .line 22
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;-><init>()V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    return-object v0
.end method

.method static synthetic blacklist lambda$prepare$1(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Z
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 31
    instance-of v0, p0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    return v0
.end method

.method static synthetic blacklist lambda$prepare$2(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 3
    .param p0, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 34
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/factory/PluginFilterCreator;->getPluginStore()Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v0

    .line 35
    .local v0, "store":Lcom/samsung/android/sume/core/plugin/PluginStore;
    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->get(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda7;-><init>()V

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 37
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 35
    return-object v1
.end method

.method static synthetic blacklist lambda$prepare$3(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 33
    new-instance v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$prepare$4(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1
    .param p0, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$prepare$5()Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;
    .locals 1

    .line 39
    new-instance v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda4;-><init>()V

    return-object v0
.end method


# virtual methods
.method synthetic blacklist lambda$newFilter$7$com-samsung-android-sume-core-filter-factory-MediaFilterCreatorChain(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 3
    .param p1, "factory"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
    .param p2, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p3, "e"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "mediaFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->creators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    .line 50
    .local v2, "creator":Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;
    invoke-interface {v2, p1, p3, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;->newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    .line 51
    .end local v2    # "creator":Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;
    goto :goto_0

    .line 52
    :cond_0
    return-object v0
.end method

.method public blacklist newFilter(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)Lcom/samsung/android/sume/core/filter/MediaFilter;
    .locals 2
    .param p1, "factory"    # Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;
    .param p2, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .param p3, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "factory",
            "descriptor",
            "successor"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->descriptorFinder:Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p3}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 45
    return-object v0
.end method

.method blacklist prepare(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
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
            ">;>;)V"
        }
    .end annotation

    .line 21
    .local p1, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;>;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    .line 22
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 28
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->creators:Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda1;-><init>()V

    .line 31
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda2;-><init>()V

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$$ExternalSyntheticLambda3;-><init>()V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain;->descriptorFinder:Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreatorChain$DescriptorFinder;

    .line 40
    return-void
.end method
