.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $mediaInfo$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $onDismiss:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/State;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Landroidx/compose/runtime/State;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$onDismiss:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$onDismiss:Lkotlin/jvm/functions/Function0;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;-><init>(Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/State;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    invoke-interface {v1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/media/mediaoutput/ext/PackageManagerExtKt;->getAppLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$context:Landroid/content/Context;

    const v3, 0x7f131375

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$context:Landroid/content/Context;

    const v4, 0x7f13015e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    sget-object v4, Landroidx/compose/material3/SnackbarDuration;->Short:Landroidx/compose/material3/SnackbarDuration;

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->label:I

    invoke-static {v3, v1, p1, v4, p0}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar$default(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material3/SnackbarDuration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$onDismiss:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/material3/SnackbarResult;

    sget-object v2, Landroidx/compose/material3/SnackbarResult;->ActionPerformed:Landroidx/compose/material3/SnackbarResult;

    if-ne p1, v2, :cond_3

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    const-wide/16 v2, -0x2

    invoke-static {v0, p0, v2, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->execute$default(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;J)V

    :cond_3
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
