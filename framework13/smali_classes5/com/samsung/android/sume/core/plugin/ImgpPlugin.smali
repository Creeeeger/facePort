.class public Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
.super Lcom/samsung/android/sume/core/plugin/PluginFixture;
.source "ImgpPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup;,
        Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist processorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "plugin":Lcom/samsung/android/sume/core/plugin/Plugin;, "Lcom/samsung/android/sume/core/plugin/Plugin<Lcom/samsung/android/sume/core/plugin/ImgpPlugin;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/PluginFixture;-><init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    .line 26
    :cond_0
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    .line 10
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$002(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    .param p1, "x1"    # Ljava/util/Map;

    .line 10
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    return-object p1
.end method

.method public static varargs blacklist join([Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    .locals 2
    .param p0, "plugins"    # [Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugins"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup;-><init>([Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;-><init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$getImgProcessor$0(Ljava/lang/String;Ljava/lang/Enum;)Z
    .locals 1
    .param p0, "typeName"    # Ljava/lang/String;
    .param p1, "it"    # Ljava/lang/Enum;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getImgProcessor(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;"
        }
    .end annotation

    .line 29
    .local p1, "type":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    if-ne p1, v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->of(Ljava/util/Map;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    invoke-static {p1, v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->of(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImgProcessor(Ljava/lang/String;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeName"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 38
    return-object v0
.end method

.method synthetic blacklist lambda$getImgProcessor$1$com-samsung-android-sume-core-plugin-ImgpPlugin(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 1
    .param p1, "it"    # Ljava/lang/Enum;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    invoke-static {p1, v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->of(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    .locals 1
    .param p2, "imgProcessor"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "imgProcessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ")",
            "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;"
        }
    .end annotation

    .line 46
    .local p1, "type":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object p0
.end method

.method public blacklist validate()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
