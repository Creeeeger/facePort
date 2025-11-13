.class public final Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;
.super Landroid/app/UserSwitchObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    iget-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1$onUserSwitchComplete$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/clocks/ClockRegistry$userSwitchObserver$1$onUserSwitchComplete$1;-><init>(Lcom/android/systemui/shared/clocks/ClockRegistry;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
