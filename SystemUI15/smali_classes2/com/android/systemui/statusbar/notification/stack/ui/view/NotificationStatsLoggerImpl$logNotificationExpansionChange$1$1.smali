.class final Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $expansionState:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;",
            "Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;->$expansionState:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;->$expansionState:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl;->statusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$logNotificationExpansionChange$1$1;->$expansionState:Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;->key:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;->isUserAction:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;->isExpanded:Z

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ui/view/NotificationStatsLoggerImpl$ExpansionState;->location:I

    const/4 v3, 0x1

    if-eq p0, v3, :cond_5

    const/4 v3, 0x2

    if-eq p0, v3, :cond_4

    const/4 v3, 0x4

    if-eq p0, v3, :cond_3

    const/16 v3, 0x8

    if-eq p0, v3, :cond_2

    const/16 v3, 0x10

    if-eq p0, v3, :cond_1

    const/16 v3, 0x40

    if-eq p0, v3, :cond_0

    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_GONE:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_HIDDEN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_PEEKING:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_MAIN_AREA:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_HIDDEN_TOP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->ordinal()I

    move-result p0

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
