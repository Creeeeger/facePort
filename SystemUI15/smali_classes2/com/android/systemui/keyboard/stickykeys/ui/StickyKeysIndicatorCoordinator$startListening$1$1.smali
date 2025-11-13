.class public final Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator$startListening$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator$startListening$1$1;->this$0:Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator$startListening$1$1;->this$0:Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;

    iget-object p2, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->stickyKeysLogger:Lcom/android/systemui/keyboard/stickykeys/StickyKeysLogger;

    invoke-virtual {p2, p1}, Lcom/android/systemui/keyboard/stickykeys/StickyKeysLogger;->logNewUiState(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->dialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->stickyKeyDialogFactory:Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeyDialogFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/activity/ComponentDialog;

    iget-object p1, p1, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeyDialogFactory;->context:Landroid/content/Context;

    const v0, 0x7f14060c

    invoke-direct {p2, p1, v0}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v1, 0x7e1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    const v1, 0x800035

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iput-boolean v0, v1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v0, "StickyKeysIndicator"

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->viewModel:Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;

    invoke-static {p1, v0}, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt;->createStickyKeyIndicatorView(Landroid/content/Context;Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;)Landroidx/compose/ui/platform/ComposeView;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/activity/ComponentDialog;->setContentView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
