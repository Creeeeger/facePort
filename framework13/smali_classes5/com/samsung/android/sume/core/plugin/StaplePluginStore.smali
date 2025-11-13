.class Lcom/samsung/android/sume/core/plugin/StaplePluginStore;
.super Lcom/samsung/android/sume/core/plugin/PluginStore;
.source "StaplePluginStore.java"


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/PluginStore;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method static synthetic blacklist lambda$add$0(Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;Landroid/content/Context;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;
    .param p1, "ctx"    # Landroid/content/Context;

    .line 27
    sget-object v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->JSON:Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    invoke-static {v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser;->of(Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser;

    move-result-object v0

    invoke-interface {p0, p1}, Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;->load(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser;->parse(Ljava/io/InputStream;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$remove$2(Lcom/samsung/android/sume/core/plugin/PluginFixture;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "fixture"    # Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 42
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getPluginFixture()Lcom/samsung/android/sume/core/plugin/PluginFixture;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist add(Lcom/samsung/android/sume/core/plugin/PluginFixture;)Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)",
            "Lcom/samsung/android/sume/core/plugin/PluginStore;"
        }
    .end annotation

    .line 23
    .local p1, "fixture":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<*>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Optional;

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/plugin/PluginFixture;->getDescriptorLoader()Lcom/samsung/android/sume/core/functional/DescriptorLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/plugin/PluginFixture;->getDescriptorStreamLoader()Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/plugin/StaplePluginStore;)V

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 23
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda4;-><init>()V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 32
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 35
    .local v0, "descriptor":Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    iget-object v1, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;->registry:Ljava/util/Map;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    invoke-direct {v3, v0, p1}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;-><init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/plugin/PluginFixture;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object p0
.end method

.method public blacklist get(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;
    .locals 2
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;->registry:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    return-object v0
.end method

.method synthetic blacklist lambda$add$1$com-samsung-android-sume-core-plugin-StaplePluginStore(Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;)Ljava/util/Optional;
    .locals 2
    .param p1, "e"    # Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;->context:Landroid/content/Context;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;)V

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 26
    return-object v0
.end method

.method synthetic blacklist lambda$remove$3$com-samsung-android-sume-core-plugin-StaplePluginStore(Ljava/util/Map$Entry;)Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .locals 2
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;->registry:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getPluginFixture()Lcom/samsung/android/sume/core/plugin/PluginFixture;

    move-result-object v0

    return-object v0
.end method

.method public blacklist remove(Lcom/samsung/android/sume/core/plugin/PluginFixture;)Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;"
        }
    .end annotation

    .line 41
    .local p1, "fixture":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V

    .line 42
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/plugin/StaplePluginStore;)V

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/plugin/PluginFixture;

    .line 41
    return-object v0
.end method
