.class final Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;
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
.field final synthetic $displayId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;->$displayId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;->$displayId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->atmService:Landroid/app/IActivityTaskManager;

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;->$displayId:I

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScreenshotPolicyImpl"

    const-string v0, "getAllRootTaskInfosOnDisplay"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
