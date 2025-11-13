.class public final Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Set;

    new-instance p2, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {p2}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->shelfIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewDataKt;->toIconInfo(Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;Landroid/graphics/drawable/Icon;)Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p2, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isAmbient:Z

    if-nez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;

    sget-object v4, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;->MaximumIndex:Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;

    invoke-direct {p2, p1, v2, v4}, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;-><init>(Ljava/util/List;ILcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;)V

    iput v3, v0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
