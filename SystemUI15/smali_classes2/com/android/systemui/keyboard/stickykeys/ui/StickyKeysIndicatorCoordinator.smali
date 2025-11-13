.class public final Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public dialog:Landroid/app/Dialog;

.field public final stickyKeyDialogFactory:Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeyDialogFactory;

.field public final stickyKeysLogger:Lcom/android/systemui/keyboard/stickykeys/StickyKeysLogger;

.field public final viewModel:Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeyDialogFactory;Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;Lcom/android/systemui/keyboard/stickykeys/StickyKeysLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->stickyKeyDialogFactory:Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeyDialogFactory;

    iput-object p3, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->viewModel:Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;

    iput-object p4, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->stickyKeysLogger:Lcom/android/systemui/keyboard/stickykeys/StickyKeysLogger;

    return-void
.end method


# virtual methods
.method public final startListening()V
    .locals 3

    new-instance v0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator$startListening$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator$startListening$1;-><init>(Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/keyboard/stickykeys/ui/StickyKeysIndicatorCoordinator;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
