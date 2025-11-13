.class public abstract Lcom/samsung/android/sume/core/plugin/PluginStore;
.super Ljava/lang/Object;
.source "PluginStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist context:Landroid/content/Context;

.field protected blacklist registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/plugin/PluginStore;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/plugin/PluginStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->registry:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->registry:Ljava/util/Map;

    return-void
.end method

.method private blacklist getPluginName(Lcom/samsung/android/sume/core/plugin/Plugin;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/android/sume/core/plugin/PluginAdapter;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/plugin/PluginAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginAdapter;->getPluginType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method static synthetic blacklist lambda$clear$4(Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->getPluginFixture()Lcom/samsung/android/sume/core/plugin/PluginFixture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/plugin/PluginFixture;->release()V

    return-void
.end method

.method static synthetic blacklist lambda$getPluginName$0(Ljava/lang/reflect/Type;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    return v0
.end method

.method static synthetic blacklist lambda$getPluginName$1(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getPluginName$2(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$of$5(Lcom/samsung/android/sume/core/plugin/PluginStore;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$of$6(Lcom/samsung/android/sume/core/plugin/PluginStore;)Ljava/util/Optional;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/plugin/PluginStore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$of$7(Lcom/samsung/android/sume/core/plugin/PluginStore;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->registry:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist lambda$of$8(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    nop

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static blacklist of()Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore;->of(Landroid/content/Context;)Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Landroid/content/Context;)Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/plugin/StaplePluginStore;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/util/List;)Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/plugin/PluginStore;",
            ">;)",
            "Lcom/samsung/android/sume/core/plugin/PluginStore;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore;->of(Landroid/content/Context;)Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/plugin/PluginStore;

    iget-object v1, v1, Lcom/samsung/android/sume/core/plugin/PluginStore;->registry:Ljava/util/Map;

    iput-object v1, v2, Lcom/samsung/android/sume/core/plugin/PluginStore;->registry:Ljava/util/Map;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v2, Lcom/samsung/android/sume/core/plugin/PluginStore;->registry:Ljava/util/Map;

    :goto_0
    return-object v2
.end method

.method public static varargs blacklist of([Lcom/samsung/android/sume/core/plugin/PluginStore;)Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/plugin/PluginStore;->of(Ljava/util/List;)Lcom/samsung/android/sume/core/plugin/PluginStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract blacklist add(Lcom/samsung/android/sume/core/plugin/PluginFixture;)Lcom/samsung/android/sume/core/plugin/PluginStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)",
            "Lcom/samsung/android/sume/core/plugin/PluginStore;"
        }
    .end annotation
.end method

.method public varargs blacklist add([Lcom/samsung/android/sume/core/plugin/Plugin;)Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "*>;)",
            "Lcom/samsung/android/sume/core/plugin/PluginStore;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/plugin/PluginStore;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public declared-synchronized blacklist clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/plugin/PluginStore$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract blacklist get(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist keyStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->registry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$add$3$com-samsung-android-sume-core-plugin-PluginStore(Lcom/samsung/android/sume/core/plugin/Plugin;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->getPluginName(Lcom/samsung/android/sume/core/plugin/Plugin;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/plugin/PluginStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found plugin type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/plugin/ImgpPlugin;-><init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    goto :goto_0

    :cond_0
    const-class v1, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/sume/core/plugin/NNPlugin;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/plugin/NNPlugin;-><init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/plugin/PluginStore;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/plugin/PluginFixture;->init(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/plugin/PluginStore;->add(Lcom/samsung/android/sume/core/plugin/PluginFixture;)Lcom/samsung/android/sume/core/plugin/PluginStore;

    nop

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown plugin type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public abstract blacklist remove(Lcom/samsung/android/sume/core/plugin/PluginFixture;)Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;"
        }
    .end annotation
.end method
