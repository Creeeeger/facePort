.class final Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;
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
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;

    iget-object p0, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;-><init>(Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod;

    iget-object v5, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_2
    move-object v5, v1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    iget-object p1, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->apiQueue:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->label:I

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod;

    iget-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    iput-object v5, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->label:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->getMinMaxLinearBrightness(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    check-cast p1, Lkotlin/Pair;

    invoke-interface {v1}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod;->getValue--foLk1o()F

    move-result v6

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    iget v7, v7, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->floatValue:F

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    iget p1, p1, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->floatValue:F

    cmpg-float v8, v6, v7

    if-gez v8, :cond_5

    move v6, v7

    goto :goto_3

    :cond_5
    cmpl-float v7, v6, p1

    if-lez v7, :cond_6

    move v6, p1

    :cond_6
    :goto_3
    instance-of p1, v1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Temporary;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    iget-object v7, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->displayManager:Landroid/hardware/display/DisplayManager;

    iget p1, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->displayId:I

    invoke-virtual {v7, p1, v6}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    goto :goto_4

    :cond_7
    instance-of p1, v1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Permanent;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    iget-object v7, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->displayManager:Landroid/hardware/display/DisplayManager;

    iget p1, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->displayId:I

    invoke-virtual {v7, p1, v6}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;->this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    instance-of v1, v1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$SetBrightnessMethod$Permanent;

    sget v7, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    goto :goto_5

    :cond_9
    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    :goto_5
    sget-object v7, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$logBrightnessChange$2;->INSTANCE:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$logBrightnessChange$2;

    const-string v8, "BrightnessChange"

    iget-object p1, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p1, v8, v1, v7, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {v6}, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt;->formatBrightness(F)Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v6, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    move-object v1, v5

    goto/16 :goto_0

    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
