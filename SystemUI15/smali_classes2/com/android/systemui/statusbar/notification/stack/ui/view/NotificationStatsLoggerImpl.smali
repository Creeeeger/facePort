.class public final Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLogger;


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final expansionStates:Ljava/util/Map;

.field public final lastLoggedVisibilities:Ljava/util/Map;

.field public final lastReportedExpansionValues:Ljava/util/Map;

.field public final notificationListenerService:Landroid/service/notification/NotificationListenerService;

.field public final notificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

.field public final statusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/service/notification/NotificationListenerService;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->statusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->expansionStates:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->lastReportedExpansionValues:Ljava/util/Map;

    return-void
.end method

.method public static synthetic getLastReportedExpansionValues$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onNotificationExpansionChanged(Ljava/lang/String;ZIZ)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;-><init>(Ljava/lang/String;ZIZ)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->expansionStates:Ljava/util/Map;

    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;->visible:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->lastReportedExpansionValues:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iget-boolean p3, v0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;->isExpanded:Z

    if-nez p1, :cond_1

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1;

    const/4 p4, 0x0

    invoke-direct {p1, p0, v0, p4}, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;Lkotlin/coroutines/Continuation;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x3

    invoke-static {v0, p4, p4, p1, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->lastReportedExpansionValues:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
