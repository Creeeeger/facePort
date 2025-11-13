.class public final Lcom/android/systemui/plank/protocol/TestProtocolProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;


# instance fields
.field public contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

.field public mInitializer:Lcom/android/systemui/SystemUIInitializer;

.field public plankComponent:Lcom/android/systemui/plank/dagger/PlankComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/plank/protocol/TestProtocolProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/plank/protocol/TestProtocolProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/plank/protocol/TestProtocolProvider;)V

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->plankComponent:Lcom/android/systemui/plank/dagger/PlankComponent;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/plank/protocol/TestProtocolProvider;)V

    goto :goto_0

    :cond_2
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->plankComponent:Lcom/android/systemui/plank/dagger/PlankComponent;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iget-boolean v2, v0, Lcom/android/systemui/plank/dagger/PlankComponent;->featureEnabled:Z

    if-eqz v2, :cond_5

    iget-object v0, v0, Lcom/android/systemui/plank/dagger/PlankComponent;->lazyProtocolManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->plankComponent:Lcom/android/systemui/plank/dagger/PlankComponent;

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, v1

    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/plank/dagger/PlankComponent;->featureEnabled:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/plank/dagger/PlankComponent;->lazyProtocolManager:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "__plank__"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p3, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->protocol:Lcom/android/systemui/plank/protocol/Protocol;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/plank/protocol/Protocol$Command;->valueOf(Ljava/lang/String;)Lcom/android/systemui/plank/protocol/Protocol$Command;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    sget-object p1, Lcom/android/systemui/plank/protocol/Protocol$Command;->none:Lcom/android/systemui/plank/protocol/Protocol$Command;

    :goto_5
    sget-object p3, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    if-eq p1, v2, :cond_f

    const/4 p3, 0x2

    if-eq p1, p3, :cond_8

    const-string p0, "key_monitor_result"

    invoke-virtual {p2, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_e

    :cond_8
    const-string p1, "key_monitor_result"

    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_monitor_data"

    iget-object p3, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;

    iget-object p3, p3, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    if-eqz p3, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/android/systemui/plank/utils/GsonWrapper;

    invoke-direct {v3}, Lcom/android/systemui/plank/utils/GsonWrapper;-><init>()V

    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-boolean v2, v3, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    iput-boolean v2, v3, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v4, p3, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    if-eqz v4, :cond_9

    monitor-enter v4

    :try_start_1
    iget-object p3, p3, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    invoke-virtual {v3, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_9
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_7

    :cond_a
    const-string p3, ""

    :goto_7
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_logging_data"

    iget-object p3, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/plank/ApiLogger;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/systemui/plank/utils/GsonWrapper;

    invoke-direct {p3}, Lcom/android/systemui/plank/utils/GsonWrapper;-><init>()V

    new-instance p3, Lcom/google/gson/GsonBuilder;

    invoke-direct {p3}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-boolean v2, p3, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    iput-boolean v2, p3, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    invoke-virtual {p3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p3

    sget-object v0, Lcom/android/systemui/plank/ApiLogger;->list:Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;

    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/InputMonitor;->dispose()V

    :cond_b
    iput-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->dispose()V

    :cond_c
    iput-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_d
    iput-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    if-eqz p1, :cond_e

    iget-object p3, p1, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    monitor-enter p3

    :try_start_2
    iget-object p1, p1, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p3

    goto :goto_8

    :catchall_1
    move-exception p0

    monitor-exit p3

    throw p0

    :cond_e
    :goto_8
    iput-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    sget-object p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->tag:Ljava/lang/String;

    const-string p1, ":: stop ::"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_f
    iget-object p1, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/plank/ApiLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/plank/ApiLogger;->list:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;

    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    if-nez p1, :cond_10

    new-instance p1, Landroid/os/HandlerThread;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->tag:Ljava/lang/String;

    const-string v1, ".Thread"

    invoke-static {p3, v0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    move-result p3

    invoke-virtual {p1, v0, p3}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    new-instance p1, Lcom/android/systemui/plank/monitor/TestInputHandler;

    iget-object p3, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/android/systemui/plank/monitor/TestInputHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    new-instance p1, Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    iget-object p3, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, p0, p3, v1, v3}, Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;-><init>(Lcom/android/systemui/plank/monitor/TestInputMonitor;Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.category.HOME"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, ":: start ::"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string p0, "key_monitor_result"

    invoke-virtual {p2, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_e

    :cond_11
    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->protocol:Lcom/android/systemui/plank/protocol/Protocol;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    invoke-static {p1}, Lcom/android/systemui/plank/protocol/Protocol$Command;->valueOf(Ljava/lang/String;)Lcom/android/systemui/plank/protocol/Protocol$Command;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    sget-object v0, Lcom/android/systemui/plank/protocol/Protocol$Command;->none:Lcom/android/systemui/plank/protocol/Protocol$Command;

    :goto_9
    sget-object v4, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_16

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_12

    const-string v4, "key_long_type"

    invoke-virtual {p3, v4, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_12
    iget-object p0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/plank/ApiLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/plank/ApiLogger;->list:Ljava/util/List;

    instance-of p3, p0, Ljava/util/Collection;

    if-eqz p3, :cond_14

    move-object p3, p0

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_14

    :cond_13
    move v2, v3

    goto :goto_a

    :cond_14
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plank/ApiInfo;

    iget-object v4, p3, Lcom/android/systemui/plank/ApiInfo;->name:Ljava/lang/String;

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-wide v4, p3, Lcom/android/systemui/plank/ApiInfo;->timestamp:J

    cmp-long p3, v4, v0

    if-ltz p3, :cond_15

    :goto_a
    const-string p0, "key_boolean_type"

    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object p2, p1

    goto :goto_e

    :cond_16
    iget-object p0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->plankDispatcherFactory:Lcom/android/systemui/plank/command/PlankDispatcherFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    invoke-static {p2}, Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;->valueOf(Ljava/lang/String;)Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    :catch_2
    sget-object p2, Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;->none:Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;

    :goto_b
    iget-object v0, p0, Lcom/android/systemui/plank/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plank/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;->global_action:Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;

    new-instance v3, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher;

    invoke-direct {v3}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_COMMAND:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/plank/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    move-object v0, v1

    :goto_c
    sget-object v2, Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;->navigation_bar:Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;

    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object p0, p0, Lcom/android/systemui/plank/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    if-eqz p0, :cond_19

    move-object v1, p0

    :cond_19
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plank/command/PlankCommandDispatcher;

    if-eqz p0, :cond_1a

    invoke-interface {p0, p3, p1}, Lcom/android/systemui/plank/command/PlankCommandDispatcher;->dispatch(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    :goto_d
    move-object p2, p0

    goto :goto_e

    :cond_1a
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_d

    :cond_1b
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p0, "key_monitor_result"

    invoke-virtual {p2, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_e
    return-object p2

    :cond_1c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, " doesn\'t support!!!"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
