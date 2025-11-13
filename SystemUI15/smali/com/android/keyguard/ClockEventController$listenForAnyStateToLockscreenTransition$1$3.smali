.class public final Lcom/android/keyguard/ClockEventController$listenForAnyStateToLockscreenTransition$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$listenForAnyStateToLockscreenTransition$1$3;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$listenForAnyStateToLockscreenTransition$1$3;->this$0:Lcom/android/keyguard/ClockEventController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/ClockEventController;->access$handleDoze(Lcom/android/keyguard/ClockEventController;F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
