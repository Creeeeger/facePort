.class public final Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1$1;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator$startHandlingDialogDismissRequests$1$1;->this$0:Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;

    iget-object p1, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->currentDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/user/ui/dialog/UserSwitcherDialogCoordinator;->interactor:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->_dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
