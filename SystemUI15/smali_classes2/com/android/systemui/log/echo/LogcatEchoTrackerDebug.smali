.class public final Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/LogcatEchoTracker;


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public volatile bufferOverrides:Ljava/util/Map;

.field public final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final sequentialBgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final settingFormat:Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;

.field public volatile tagOverrides:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p4, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism(I)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->sequentialBgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->bufferOverrides:Ljava/util/Map;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->tagOverrides:Ljava/util/Map;

    new-instance p1, Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;

    invoke-direct {p1}, Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->settingFormat:Lcom/android/systemui/log/echo/LogcatEchoSettingFormat;

    return-void
.end method


# virtual methods
.method public final isBufferLoggable(Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->bufferOverrides:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/core/LogLevel;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebugKt;->DEFAULT_LOG_LEVEL:Lcom/android/systemui/log/core/LogLevel;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTagLoggable(Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->tagOverrides:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/core/LogLevel;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebugKt;->DEFAULT_LOG_LEVEL:Lcom/android/systemui/log/core/LogLevel;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final listEchoOverrides()Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->bufferOverrides:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->tagOverrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/log/core/LogLevel;

    new-instance v4, Lcom/android/systemui/log/echo/LogcatEchoOverride;

    sget-object v5, Lcom/android/systemui/log/echo/EchoOverrideType;->BUFFER:Lcom/android/systemui/log/echo/EchoOverrideType;

    invoke-direct {v4, v5, v3, v2}, Lcom/android/systemui/log/echo/LogcatEchoOverride;-><init>(Lcom/android/systemui/log/echo/EchoOverrideType;Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/log/core/LogLevel;

    new-instance v3, Lcom/android/systemui/log/echo/LogcatEchoOverride;

    sget-object v4, Lcom/android/systemui/log/echo/EchoOverrideType;->TAG:Lcom/android/systemui/log/echo/EchoOverrideType;

    invoke-direct {v3, v4, v2, v1}, Lcom/android/systemui/log/echo/LogcatEchoOverride;-><init>(Lcom/android/systemui/log/echo/EchoOverrideType;Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final start()V
    .locals 5

    new-instance v0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$loadEchoOverrides$1;-><init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->sequentialBgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v2, v4, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$start$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug$start$1;-><init>(Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;)V

    iget-object p0, p0, Lcom/android/systemui/log/echo/LogcatEchoTrackerDebug;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string v1, "echo"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
