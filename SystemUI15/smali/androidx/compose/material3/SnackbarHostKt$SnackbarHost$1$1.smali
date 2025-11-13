.class final Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;
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
.field final synthetic $accessibilityManager:Landroidx/compose/ui/platform/AccessibilityManager;

.field final synthetic $currentSnackbarData:Landroidx/compose/material3/SnackbarData;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/platform/AccessibilityManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnackbarData;",
            "Landroidx/compose/ui/platform/AccessibilityManager;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->$currentSnackbarData:Landroidx/compose/material3/SnackbarData;

    iput-object p2, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->$accessibilityManager:Landroidx/compose/ui/platform/AccessibilityManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;

    iget-object v0, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->$currentSnackbarData:Landroidx/compose/material3/SnackbarData;

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->$accessibilityManager:Landroidx/compose/ui/platform/AccessibilityManager;

    invoke-direct {p1, v0, p0, p2}, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;-><init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/platform/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->$currentSnackbarData:Landroidx/compose/material3/SnackbarData;

    if-eqz p1, :cond_b

    check-cast p1, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    iget-object p1, p1, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->visuals:Landroidx/compose/material3/SnackbarVisuals;

    invoke-interface {p1}, Landroidx/compose/material3/SnackbarVisuals;->getDuration()Landroidx/compose/material3/SnackbarDuration;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->$currentSnackbarData:Landroidx/compose/material3/SnackbarData;

    check-cast v1, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    iget-object v1, v1, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->visuals:Landroidx/compose/material3/SnackbarVisuals;

    invoke-interface {v1}, Landroidx/compose/material3/SnackbarVisuals;->getActionLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->$accessibilityManager:Landroidx/compose/ui/platform/AccessibilityManager;

    sget-object v4, Landroidx/compose/material3/SnackbarHostKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x3

    if-eq p1, v2, :cond_5

    const/4 v7, 0x2

    if-eq p1, v7, :cond_4

    if-ne p1, v6, :cond_3

    const-wide/16 v7, 0xfa0

    goto :goto_1

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    const-wide/16 v7, 0x2710

    goto :goto_1

    :cond_5
    move-wide v7, v4

    :goto_1
    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    check-cast v3, Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    const-wide/32 v9, 0x7fffffff

    cmp-long p1, v7, v9

    if-ltz p1, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    const/4 v6, 0x7

    :cond_8
    sget-object p1, Landroidx/compose/ui/platform/Api29Impl;->INSTANCE:Landroidx/compose/ui/platform/Api29Impl;

    iget-object v1, v3, Landroidx/compose/ui/platform/AndroidAccessibilityManager;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    long-to-int v3, v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3, v6}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_9

    goto :goto_2

    :cond_9
    int-to-long v4, p1

    :goto_2
    move-wide v7, v4

    :goto_3
    iput v2, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->label:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_4
    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostKt$SnackbarHost$1$1;->$currentSnackbarData:Landroidx/compose/material3/SnackbarData;

    check-cast p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->dismiss()V

    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
