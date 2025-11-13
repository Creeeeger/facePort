.class public final Lcom/android/systemui/back/domain/interactor/BackActionInteractor$start$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/back/domain/interactor/BackActionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor$start$1$1;->this$0:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor$start$1$1;->this$0:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->isCallbackRegistered:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->callback:Lcom/android/systemui/back/domain/interactor/BackActionInteractor$callback$2;

    invoke-virtual {p2, v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->isCallbackRegistered:Z

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->isCallbackRegistered:Z

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->callback:Lcom/android/systemui/back/domain/interactor/BackActionInteractor$callback$2;

    invoke-virtual {p2, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    iput-boolean v0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->isCallbackRegistered:Z

    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
