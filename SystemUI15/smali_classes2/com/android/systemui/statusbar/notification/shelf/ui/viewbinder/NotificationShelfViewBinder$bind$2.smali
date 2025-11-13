.class final Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;
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
.field final synthetic $falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field final synthetic $nicBinder:Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;

.field final synthetic $notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field final synthetic $shelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field final synthetic $viewModel:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;",
            "Lcom/android/systemui/statusbar/NotificationShelf;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$viewModel:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$nicBinder:Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v7, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$viewModel:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$nicBinder:Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;-><init>(Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerShelfViewBinder;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$viewModel:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/ActivatableNotificationViewBinder;->bind(Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/plugins/FalsingManager;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$shelf:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$viewModel:Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->$notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v6, "NotifShelf#bindShelfIcons"

    invoke-static {v6}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setShelfIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    new-instance v4, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2$1$2;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v5}, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2$1$2;-><init>(Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;Lcom/android/systemui/statusbar/NotificationShelf;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {p1, v5, v5, v4, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v4, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2$1$3;

    invoke-direct {v4, v3, v1, v5}, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2$1$3;-><init>(Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;Lcom/android/systemui/statusbar/NotificationShelf;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v5, v5, v4, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p1, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder;->INSTANCE:Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder$bind$2;->label:I

    invoke-static {p1, v1, v3, p0}, Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder;->access$registerViewListenersWhileAttached(Lcom/android/systemui/statusbar/notification/shelf/ui/viewbinder/NotificationShelfViewBinder;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/shelf/ui/viewmodel/NotificationShelfViewModel;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_5
    throw p0
.end method
