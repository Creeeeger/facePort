.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;
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
.field final synthetic $actions$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $mediaInfo$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "Landroid/content/Context;",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$actions$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$actions$delegate:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->label:I

    const-wide/16 v2, -0x4

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$actions$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iget-wide v5, v5, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/media/mediaoutput/ext/PackageManagerExtKt;->getAppLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f131372

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f13015e

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Landroidx/compose/material3/SnackbarDuration;->Short:Landroidx/compose/material3/SnackbarDuration;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->L$2:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;->label:I

    invoke-static {v5, v8, v1, v7, p0}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object v1, v6

    move-object p1, p0

    :goto_1
    check-cast p1, Landroidx/compose/material3/SnackbarResult;

    sget-object p0, Landroidx/compose/material3/SnackbarResult;->ActionPerformed:Landroidx/compose/material3/SnackbarResult;

    if-ne p1, p0, :cond_5

    const-wide/16 p0, -0x2

    invoke-static {v1, v0, p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->execute$default(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;J)V

    :cond_5
    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->execute$default(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;J)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
