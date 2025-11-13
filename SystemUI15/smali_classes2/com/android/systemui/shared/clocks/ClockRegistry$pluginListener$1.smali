.class public final Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPluginAttached(Lcom/android/systemui/plugins/PluginLifecycleManager;)Z
    .locals 13

    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$1;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/PluginLifecycleManager;->setLogFunc(Ljava/util/function/BiConsumer;)V

    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->keepAllLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->KNOWN_PLUGINS:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/systemui/plugins/PluginLifecycleManager;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logger:Lcom/android/systemui/log/core/Logger;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    sget-object p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$2;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$2;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, p0, v3}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/systemui/plugins/PluginLifecycleManager;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return v1

    :cond_1
    sget-object v4, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$4;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$4;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5, v4, v3}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/systemui/plugins/PluginLifecycleManager;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v1

    :goto_2
    invoke-virtual {v7}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v10, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    invoke-direct {v10, v7, v3, p1}, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;-><init>(Lcom/android/systemui/plugins/clocks/ClockMetadata;Lcom/android/systemui/plugins/clocks/ClockProvider;Lcom/android/systemui/plugins/PluginLifecycleManager;)V

    new-instance v7, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$info$1;

    invoke-direct {v7, v4, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$info$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    invoke-virtual {v9, v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v7, v10}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$info$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    move-object v10, v9

    :goto_3
    check-cast v10, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    iget-object v7, v10, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$6;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$6;

    sget-object v10, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v10, v9, v3}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Lcom/android/systemui/log/core/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Lcom/android/systemui/log/core/LogMessage;->setStr3(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_6
    iput-object v3, v10, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->provider:Lcom/android/systemui/plugins/clocks/ClockProvider;

    goto :goto_0

    :cond_7
    iget-boolean p1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_8

    invoke-static {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->access$triggerOnAvailableClocksChanged(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->verifyLoadedProviders()V

    return v6
.end method

.method public final onPluginDetached(Lcom/android/systemui/plugins/PluginLifecycleManager;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginDetached$1;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginDetached$1;-><init>(Lcom/android/systemui/plugins/PluginLifecycleManager;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v1, v2, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Z)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->metadata:Lcom/android/systemui/plugins/clocks/ClockMetadata;

    invoke-virtual {v3}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logger:Lcom/android/systemui/log/core/Logger;

    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    :goto_1
    sget-object v5, Lcom/android/systemui/shared/clocks/ClockRegistry$onDisconnected$1;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onDisconnected$1;

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v4, v5, v8}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->metadata:Lcom/android/systemui/plugins/clocks/ClockMetadata;

    invoke-virtual {v5}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/android/systemui/log/core/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-interface {v4, v2}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-static {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->access$triggerOnAvailableClocksChanged(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    :cond_2
    return-void
.end method

.method public final onPluginLoaded(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;Lcom/android/systemui/plugins/PluginLifecycleManager;)V
    .locals 10

    check-cast p1, Lcom/android/systemui/plugins/clocks/ClockProviderPlugin;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    iget-object p2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockBuffers:Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/clocks/ClockProvider;->initialize(Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;)V

    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockProvider;->getClocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->isTransitClockEnabled:Z

    if-nez v3, :cond_1

    const-string v3, "DIGITAL_CLOCK_METRO"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    invoke-direct {v4, v1, p1, p3}, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;-><init>(Lcom/android/systemui/plugins/clocks/ClockMetadata;Lcom/android/systemui/plugins/clocks/ClockProvider;Lcom/android/systemui/plugins/PluginLifecycleManager;)V

    new-instance v1, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;

    invoke-direct {v1, p2, p0}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    sget-object v5, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->KNOWN_PLUGINS:Ljava/util/Map;

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v4}, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    check-cast v4, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    iget-object v1, v4, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->logger:Lcom/android/systemui/log/core/Logger;

    const/4 v6, 0x0

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$1;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$1;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4, v3, v6}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/android/systemui/log/core/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/android/systemui/log/core/LogMessage;->setStr3(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-interface {p3}, Lcom/android/systemui/plugins/PluginLifecycleManager;->unloadPlugin()V

    goto :goto_0

    :cond_4
    iput-object p1, v4, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->provider:Lcom/android/systemui/plugins/clocks/ClockProvider;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->metadata:Lcom/android/systemui/plugins/clocks/ClockMetadata;

    invoke-virtual {v3}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    :goto_2
    sget-object v7, Lcom/android/systemui/shared/clocks/ClockRegistry$onLoaded$1;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onLoaded$1;

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4, v7, v6}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/android/systemui/log/core/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-interface {v4, v2}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->triggerOnCurrentClockChanged()V

    goto/16 :goto_0

    :cond_6
    iget-boolean p1, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->access$triggerOnAvailableClocksChanged(Lcom/android/systemui/shared/clocks/ClockRegistry;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->verifyLoadedProviders()V

    return-void
.end method

.method public final onPluginUnloaded(Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/plugins/PluginLifecycleManager;)V
    .locals 10

    check-cast p1, Lcom/android/systemui/plugins/clocks/ClockProviderPlugin;

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockProvider;->getClocks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    invoke-virtual {v0}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/shared/clocks/ClockRegistry;->logger:Lcom/android/systemui/log/core/Logger;

    if-nez v4, :cond_3

    sget-object v1, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginUnloaded$1;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginUnloaded$1;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4, v1, v3}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/systemui/log/core/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/systemui/log/core/LogMessage;->setStr3(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_3
    iput-object v3, v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->provider:Lcom/android/systemui/plugins/clocks/ClockProvider;

    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->getCurrentClockId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->metadata:Lcom/android/systemui/plugins/clocks/ClockMetadata;

    invoke-virtual {v4}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    :goto_2
    sget-object v7, Lcom/android/systemui/shared/clocks/ClockRegistry$onUnloaded$1;->INSTANCE:Lcom/android/systemui/shared/clocks/ClockRegistry$onUnloaded$1;

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6, v7, v3}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/systemui/plugins/clocks/ClockMetadata;->getClockId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/systemui/log/core/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/android/systemui/log/core/LogMessage;->setBool1(Z)V

    invoke-virtual {v5}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->triggerOnCurrentClockChanged()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->verifyLoadedProviders()V

    return-void
.end method
