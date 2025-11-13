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
            "Lcom/samsung/android/sume/core/functional/Operator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/PluginFixture;-><init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$002(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    return-object p1
.end method

.method public static varargs blacklist join([Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    new-instance v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$ImgpPluginGroup;-><init>([Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;-><init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$getImgProcessor$0(Ljava/lang/String;Ljava/lang/Enum;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getImgProcessor(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/functional/Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lcom/samsung/android/sume/core/functional/Operator;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->of(Ljava/util/Map;)Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/Operator;

    invoke-static {p1, v0}, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->of(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getImgProcessor(Ljava/lang/String;)Lcom/samsung/android/sume/core/functional/Operator;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/Operator;

    return-object v0
.end method

.method synthetic blacklist lambda$getImgProcessor$1$com-samsung-android-sume-core-plugin-ImgpPlugin(Ljava/lang/Enum;)Lcom/samsung/android/sume/core/functional/Operator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/Operator;

    invoke-static {p1, v0}, Lcom/samsung/android/sume/core/functional/OperatorWrapper;->of(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setImgProcessor(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/Operator;",
            ")",
            "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist validate()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;->processorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
