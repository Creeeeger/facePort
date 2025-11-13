.class public abstract Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "PluginDescriptor.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getFilterId$1(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist getFilterId()Ljava/lang/String;
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getPluginId()Ljava/lang/Enum;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getPluginClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "#"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFilterType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/sume/core/filter/PluginFilter;

    return-object v0
.end method

.method public blacklist getPluginClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->PLUGIN_CLASS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getPluginClassName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->PLUGIN_CLASS_NAME:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPluginId()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    sget v0, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->PLUGIN_ID:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/samsung/android/sume/core/types/Version;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->PLUGIN_VERSION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/types/Version;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/types/Version;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/Version;

    return-object v0
.end method

.method synthetic blacklist lambda$getPluginClassName$0$com-samsung-android-sume-core-descriptor-PluginDescriptor()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getPluginClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setPluginClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->PLUGIN_CLASS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setPluginClassName(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->PLUGIN_CLASS_NAME:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setPluginId(Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->PLUGIN_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setVersion(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/PluginDescriptor;->PLUGIN_VERSION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/types/Version;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/types/Version;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
