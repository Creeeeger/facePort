.class final Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;

    iget-object p0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;-><init>(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    iget-object v3, v3, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v3}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([I)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;

    iget-object v4, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    invoke-direct {v3, v1, v4, p1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v4, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v5, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$FreshStart;->INSTANCE:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$FreshStart;

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4, p1, v6}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->access$sendWithLogging(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->inputManager:Landroid/hardware/input/InputManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    new-instance v1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$1;

    iget-object v4, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    invoke-direct {v1, v4, v3}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$1;-><init>(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1$listener$1;)V

    iput v2, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
