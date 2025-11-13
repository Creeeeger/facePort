.class public final Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p0, 0x3f

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, v0, p0}, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;->filteredNotifSet$default(Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;ZZZI)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconContainerShelfViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
