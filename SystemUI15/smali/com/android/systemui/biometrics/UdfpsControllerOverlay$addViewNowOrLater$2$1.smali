.class public final Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$2$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$2$1;->this$0:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->addViewRunnable:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->listenForCurrentKeyguardState:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;->run()V

    :cond_1
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->addViewRunnable:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$addViewNowOrLater$$inlined$Runnable$1;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
