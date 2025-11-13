.class public final Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final areAlarmsAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$1;

.field public final isMediaAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$2;

.field public final isRingerAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$4;

.field public final isSystemAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$3;

.field public final repository:Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepository;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->repository:Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepository;

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;

    iget-object v0, v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;->notificationPolicy:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->areAlarmsAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$1;

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;

    iget-object v0, v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;->notificationPolicy:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$2;

    invoke-direct {v1, v0}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->isMediaAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$2;

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;

    iget-object v0, v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;->notificationPolicy:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$3;

    invoke-direct {v1, v0}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->isSystemAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$3;

    check-cast p1, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;

    iget-object p1, p1, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;->notificationPolicy:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$4;

    invoke-direct {v0, p1}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->isRingerAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$4;

    return-void
.end method


# virtual methods
.method public final isZenMuted-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->repository:Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepository;

    check-cast v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;

    iget-object v0, v0, Lcom/android/settingslib/statusbar/notification/data/repository/NotificationsSoundPolicyRepositoryImpl;->zenMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object v0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->areAlarmsAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object v0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->isMediaAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$2;

    invoke-direct {v3, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object v0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->isRingerAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$4;

    invoke-direct {v4, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object p0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->isSystemAllowed:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$special$$inlined$map$3;

    invoke-direct {v5, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v6, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;

    const/4 p0, 0x0

    invoke-direct {v6, p1, p0}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object p0

    return-object p0
.end method
