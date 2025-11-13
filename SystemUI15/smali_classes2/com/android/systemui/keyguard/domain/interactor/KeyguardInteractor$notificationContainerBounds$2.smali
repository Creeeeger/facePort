.class final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $sharedNotificationContainerInteractor:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Ljavax/inject/Provider;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Ljavax/inject/Provider;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2;->$sharedNotificationContainerInteractor:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2;->$applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->_notificationPlaceholderBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2;->$sharedNotificationContainerInteractor:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/SharedNotificationContainerInteractor;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/SharedNotificationContainerInteractor;->configurationBasedDimensions:Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->_nonSplitShadeNotifciationPlaceholderBounds:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    invoke-static {v1, v0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$notificationContainerBounds$2;->$applicationScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    new-instance v8, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;-><init>(FFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p0, v1, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p0

    return-object p0
.end method
