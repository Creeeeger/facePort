.class public final Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final activityStarter:Ldagger/Lazy;

.field public final applicationScope:Ldagger/Lazy;

.field public final broadcastSender:Ldagger/Lazy;

.field public final context:Ldagger/Lazy;

.field public currentDialog:Landroid/app/Dialog;

.field public final dialogTransitionAnimator:Ldagger/Lazy;

.field public final eventLogger:Ldagger/Lazy;

.field public final falsingCollector:Ldagger/Lazy;

.field public final falsingManager:Ldagger/Lazy;

.field public final interactor:Ldagger/Lazy;

.field public final userDetailAdapterProvider:Ljavax/inject/Provider;

.field public final userSwitcherViewModel:Ldagger/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ljavax/inject/Provider;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ljavax/inject/Provider;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->context:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->applicationScope:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingManager:Ldagger/Lazy;

    iput-object p4, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->broadcastSender:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->dialogTransitionAnimator:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->interactor:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->userDetailAdapterProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->eventLogger:Ldagger/Lazy;

    iput-object p9, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->activityStarter:Ldagger/Lazy;

    iput-object p10, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->falsingCollector:Ldagger/Lazy;

    iput-object p11, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->userSwitcherViewModel:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->applicationScope:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogShowRequests$1;-><init>(Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1;-><init>(Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
