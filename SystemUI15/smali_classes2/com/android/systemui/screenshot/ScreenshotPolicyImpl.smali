.class public final Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotPolicy;


# instance fields
.field public final atmService:Landroid/app/IActivityTaskManager;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final proxyConnector:Lcom/android/internal/infra/ServiceConnector;

.field public final systemUiContent:Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

.field public final userMgr:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/app/IActivityTaskManager;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->userMgr:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->atmService:Landroid/app/IActivityTaskManager;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p2, Lcom/android/internal/infra/ServiceConnector$Impl;

    new-instance v2, Landroid/content/Intent;

    const-class p3, Lcom/android/systemui/screenshot/ScreenshotProxyService;

    invoke-direct {v2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    sget-object v5, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$proxyConnector$1;->INSTANCE:Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$proxyConnector$1;

    const v3, 0x40000021    # 2.0000079f

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    new-instance p3, Landroid/content/ComponentName;

    const-class p4, Lcom/android/systemui/SystemUIService;

    invoke-direct {p3, p1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p4

    const/4 p5, -0x1

    invoke-direct {p2, p3, p1, p4, p5}, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;-><init>(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/UserHandle;I)V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->systemUiContent:Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    return-void
.end method

.method public static findPrimaryContent$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;

    iget v1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->I$0:I

    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->I$0:I

    iput v4, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->isNotificationShadeExpanded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->systemUiContent:Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    return-object p0

    :cond_5
    iput-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$findPrimaryContent$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->getAllRootTaskInfosOnDisplay(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_7

    iget-boolean v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->isVisible:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->isRunning:Z

    if-eqz v1, :cond_7

    iget v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->numActivities:I

    if-lez v1, :cond_7

    iget-object v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_7

    iget-object v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v0, v0

    if-nez v0, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    xor-int/2addr v0, v4

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_9
    const/4 p2, 0x0

    :goto_4
    check-cast p2, Landroid/app/ActivityTaskManager$RootTaskInfo;

    if-nez p2, :cond_a

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->systemUiContent:Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    return-object p0

    :cond_a
    invoke-static {p2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImplKt;->toDisplayContentInfo(Landroid/app/ActivityTaskManager$RootTaskInfo;)Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAllRootTaskInfosOnDisplay$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$getAllRootTaskInfosOnDisplay$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSystemUiContent$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method

.method public static isManagedProfile$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;

    iget v1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$managed$1;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$managed$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isManagedProfile$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isManagedProfile: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenshotPolicyImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isNotificationShadeExpanded$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->proxyConnector:Lcom/android/internal/infra/ServiceConnector;

    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isNotificationShadeExpanded$2$1;->INSTANCE:Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isNotificationShadeExpanded$2$1;

    invoke-interface {p0, p1}, Lcom/android/internal/infra/ServiceConnector;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isNotificationShadeExpanded$2$2;

    invoke-direct {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl$isNotificationShadeExpanded$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method


# virtual methods
.method public getAllRootTaskInfosOnDisplay(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->getAllRootTaskInfosOnDisplay$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isNotificationShadeExpanded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->isNotificationShadeExpanded$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
