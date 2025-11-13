.class public final Lcom/android/systemui/shared/clocks/ClockRegistry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final assert:Lcom/android/systemui/util/ThreadAssert;

.field public final availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final clockBuffers:Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

.field public final clockChangeListeners:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public final fallbackClockId:Ljava/lang/String;

.field public final handleAllUsers:Z

.field public final isClockChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isClockListChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isEnabled:Z

.field public final isQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isRegistered:Z

.field public final isTransitClockEnabled:Z

.field public final keepAllLoaded:Z

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final pluginListener:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;

.field public final pluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final settingObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;

.field public settings:Lcom/android/systemui/plugins/clocks/ClockSettings;

.field public final userSwitchObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ZZLcom/android/systemui/plugins/clocks/ClockProvider;Ljava/lang/String;Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;ZLjava/lang/String;ZLcom/android/systemui/util/ThreadAssert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->pluginManager:Lcom/android/systemui/plugins/PluginManager;

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-boolean p6, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isEnabled:Z

    iput-boolean p7, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->handleAllUsers:Z

    iput-object p9, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->fallbackClockId:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockBuffers:Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    iput-boolean p11, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->keepAllLoaded:Z

    iput-boolean p13, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isTransitClockEnabled:Z

    iput-object p14, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->assert:Lcom/android/systemui/util/ThreadAssert;

    const-class p1, Lcom/android/systemui/shared/clocks/ClockRegistry;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    new-instance p2, Lcom/android/systemui/log/core/Logger;

    if-eqz p10, :cond_0

    invoke-virtual {p10}, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->getInfraMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    new-instance p3, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;

    sget-object p4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-direct {p3, p4}, Lcom/android/systemui/log/core/LogcatOnlyMessageBuffer;-><init>(Lcom/android/systemui/log/core/LogLevel;)V

    :cond_1
    invoke-direct {p2, p3, p1}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logger:Lcom/android/systemui/log/core/Logger;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockChangeListeners:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settingObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;

    new-instance p1, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->pluginListener:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;

    new-instance p1, Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->userSwitchObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isClockChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isClockListChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p8, p10}, Lcom/android/systemui/plugins/clocks/ClockProvider;->initialize(Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;)V

    invoke-interface {p8}, Lcom/android/systemui/plugins/clocks/ClockProvider;->getClocks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    iget-object p4, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object p5

    new-instance p6, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    const/4 p7, 0x0

    invoke-direct {p6, p3, p8, p7}, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;-><init>(Lcom/android/systemui/plugins/clocks/ClockMetadata;Lcom/android/systemui/plugins/clocks/ClockProvider;Lcom/android/systemui/plugins/PluginLifecycleManager;)V

    invoke-virtual {p4, p5, p6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p3, "DEFAULT"

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " did not register clock at DEFAULT"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ZZLcom/android/systemui/plugins/clocks/ClockProvider;Ljava/lang/String;Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;ZLjava/lang/String;ZLcom/android/systemui/util/ThreadAssert;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    const-string v1, "DEFAULT"

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p9

    :goto_0
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object/from16 v12, p10

    :goto_1
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v15, v1

    goto :goto_2

    :cond_2
    move/from16 v15, p13

    :goto_2
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/util/ThreadAssert;

    invoke-direct {v0}, Lcom/android/systemui/util/ThreadAssert;-><init>()V

    move-object/from16 v16, v0

    goto :goto_3

    :cond_3
    move-object/from16 v16, p14

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v16}, Lcom/android/systemui/shared/clocks/ClockRegistry;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ZZLcom/android/systemui/plugins/clocks/ClockProvider;Ljava/lang/String;Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;ZLjava/lang/String;ZLcom/android/systemui/util/ThreadAssert;)V

    return-void
.end method

.method public static final access$onConnected(Lcom/android/systemui/shared/clocks/ClockRegistry;Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->metadata:Lcom/android/systemui/plugins/clocks/ClockMetadata;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logger:Lcom/android/systemui/log/core/Logger;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    :goto_0
    sget-object v2, Lcom/android/systemui/shared/clocks/ClockRegistry$onConnected$1;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onConnected$1;

    invoke-virtual {p0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->metadata:Lcom/android/systemui/plugins/clocks/ClockMetadata;

    invoke-virtual {v2}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/systemui/log/core/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public static final access$triggerOnAvailableClocksChanged(Lcom/android/systemui/shared/clocks/ClockRegistry;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isClockListChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$triggerOnAvailableClocksChanged$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/clocks/ClockRegistry$triggerOnAvailableClocksChanged$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v2, p0, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method


# virtual methods
.method public final createClock(Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/ClockController;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/clocks/ClockSettings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockSettings;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/android/systemui/plugins/clocks/ClockSettings;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getClockId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/android/systemui/plugins/clocks/ClockSettings;->copy$default(Lcom/android/systemui/plugins/clocks/ClockSettings;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/android/systemui/plugins/clocks/ClockSettings;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->provider:Lcom/android/systemui/plugins/clocks/ClockProvider;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/clocks/ClockProvider;->createClock(Lcom/android/systemui/plugins/clocks/ClockSettings;)Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final createCurrentClock()Lcom/android/systemui/plugins/clocks/ClockController;
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isEnabled:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->createClock(Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logger:Lcom/android/systemui/log/core/Logger;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$1;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$1;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4, p0, v2}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$3;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$3;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4, v1, v2}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->verifyLoadedProviders()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$5;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$createCurrentClock$5;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4, v1, v2}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_2
    :goto_0
    const-string v0, "DEFAULT"

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->createClock(Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getCurrentClockId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/clocks/ClockSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getClockId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->fallbackClockId:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public final querySettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->assert:Lcom/android/systemui/util/ThreadAssert;

    invoke-virtual {v0}, Lcom/android/systemui/util/ThreadAssert;->isNotMainThread()V

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->handleAllUsers:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "lock_screen_custom_clock_face"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/android/systemui/plugins/clocks/ClockSettings;->Companion:Lcom/android/systemui/plugins/clocks/ClockSettings$Companion;

    invoke-virtual {v1, v0}, Lcom/android/systemui/plugins/clocks/ClockSettings$Companion;->deserialize(Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/ClockSettings;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logger:Lcom/android/systemui/log/core/Logger;

    const-string v2, "Failed to parse clock settings"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/log/core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/clocks/ClockSettings;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/clocks/ClockSettings;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->verifyLoadedProviders()V

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->triggerOnCurrentClockChanged()V

    :cond_1
    return-void
.end method

.method public final registerListeners()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isRegistered:Z

    const-class v1, Lcom/android/systemui/plugins/clocks/ClockProviderPlugin;

    iget-object v2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->pluginManager:Lcom/android/systemui/plugins/PluginManager;

    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->pluginListener:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;

    invoke-interface {v2, v3, v1, v0}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$registerListeners$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/clocks/ClockRegistry$registerListeners$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v4, 0x2

    invoke-static {v2, v3, v1, v0, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->handleAllUsers:Z

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->settingObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$settingObserver$1;

    const/4 v2, 0x0

    const-string v3, "lock_screen_custom_clock_face"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->userSwitchObserver:Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final triggerOnCurrentClockChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isClockChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$triggerOnCurrentClockChanged$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/clocks/ClockRegistry$triggerOnCurrentClockChanged$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v3, 0x2

    invoke-static {v2, p0, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final verifyLoadedProviders()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logger:Lcom/android/systemui/log/core/Logger;

    const-string/jumbo v0, "verifyLoadedProviders: shouldSchedule=false"

    invoke-static {p0, v0, v2, v1, v2}, Lcom/android/systemui/log/core/Logger;->v$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/shared/clocks/ClockRegistry$verifyLoadedProviders$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3, p0, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
