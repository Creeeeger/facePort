.class final Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Landroid/view/MotionEvent;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->label:I

    const-string v3, "obtain(...)"

    const/high16 v4, 0x40a00000    # 5.0f

    const-wide/16 v5, 0x7d0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_0

    return-object v1

    :cond_0
    :goto_0
    iget-object v7, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    sget-object v8, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;->sensorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v8, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float v14, v7, v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v15, v7

    const-wide/16 v9, 0x64

    const/16 v16, 0x0

    const-wide/16 v11, 0x64

    const/4 v13, 0x7

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->label:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_2

    return-object v1

    :cond_2
    :goto_2
    iget-object v7, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    sget-object v8, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;->sensorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v14, v7

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float v15, v7, v4

    const-wide/16 v9, 0x64

    const/16 v16, 0x0

    const-wide/16 v11, 0x64

    const/4 v13, 0x7

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->label:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_3

    return-object v1

    :cond_3
    :goto_3
    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_4

    return-object v1

    :cond_4
    :goto_4
    iget-object v7, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    sget-object v8, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;->sensorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v8, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float v14, v7, v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v15, v7

    const-wide/16 v9, 0x64

    const/16 v16, 0x0

    const-wide/16 v11, 0x64

    const/4 v13, 0x7

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x6

    iput v8, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->label:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    return-object v1

    :cond_5
    :goto_5
    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x7

    iput v7, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    return-object v1

    :cond_6
    :goto_6
    iget-object v5, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    sget-object v6, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;->sensorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v12, v5

    iget v5, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v13, v5, v4

    const-wide/16 v7, 0x64

    const/4 v14, 0x0

    const-wide/16 v9, 0x64

    const/4 v11, 0x7

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->L$0:Ljava/lang/Object;

    const/16 v3, 0x8

    iput v3, v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
