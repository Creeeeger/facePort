.class public final Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$Companion;


# instance fields
.field public final _installSessions:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final bgHandler:Landroid/os/Handler;

.field public final installSessionsForPrimaryUser:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public final packageInstaller:Landroid/content/pm/PackageInstaller;

.field public final sessions:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->Companion:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/log/LogBuffer;Landroid/content/pm/PackageInstaller;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->bgHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->packageInstaller:Landroid/content/pm/PackageInstaller;

    new-instance p1, Lcom/android/systemui/log/core/Logger;

    const-string p4, "PackageInstallerMonitor"

    invoke-direct {p1, p3, p4}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->logger:Lcom/android/systemui/log/core/Logger;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getSubscriptionCount()Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$lambda$1$$inlined$map$1;

    invoke-direct {p4, p3}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$2;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

    invoke-direct {v1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p3, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$_installSessions$1$3;-><init>(Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p4, v1, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->_installSessions:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->installSessionsForPrimaryUser:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onBadgingChanged(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->logger:Lcom/android/systemui/log/core/Logger;

    sget-object v1, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$onBadgingChanged$1;->INSTANCE:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$onBadgingChanged$1;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/log/core/LogMessage;->setInt1(I)V

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->updateSession(I)V

    return-void
.end method

.method public final onCreated(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->logger:Lcom/android/systemui/log/core/Logger;

    sget-object v1, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$onCreated$1;->INSTANCE:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$onCreated$1;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/log/core/LogMessage;->setInt1(I)V

    invoke-virtual {v0}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->updateSession(I)V

    return-void
.end method

.method public final onFinished(IZ)V
    .locals 5

    iget-object p2, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->logger:Lcom/android/systemui/log/core/Logger;

    sget-object v0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$onFinished$1;->INSTANCE:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$onFinished$1;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {p2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/log/core/LogMessage;->setInt1(I)V

    invoke-virtual {p2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p2, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->updateInstallerSessionsFlow()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final onProgressChanged(IF)V
    .locals 0

    return-void
.end method

.method public final updateInstallerSessionsFlow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->_installSessions:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSession(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->packageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->sessions:Ljava/util/Map;

    sget-object v3, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->Companion:Lcom/android/systemui/common/data/repository/PackageInstallerMonitor$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/common/shared/model/PackageInstallSession;

    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/android/systemui/common/shared/model/PackageInstallSession;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/os/UserHandle;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/common/data/repository/PackageInstallerMonitor;->updateInstallerSessionsFlow()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method
