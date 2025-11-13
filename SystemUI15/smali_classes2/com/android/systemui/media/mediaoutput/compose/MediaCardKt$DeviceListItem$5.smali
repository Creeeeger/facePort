.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;
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
.field final synthetic $body:Ljava/lang/String;

.field final synthetic $checkStopBroadcasting$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

.field final synthetic $negative:Ljava/lang/String;

.field final synthetic $positive:Ljava/lang/String;

.field final synthetic $snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnackbarHostState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;",
            "Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;",
            "Landroidx/compose/runtime/MutableState;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$body:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$positive:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$negative:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    iput-object p7, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iput-object p8, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$checkStopBroadcasting$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    new-instance p1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$body:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$positive:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$negative:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    iget-object v7, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iget-object v8, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$checkStopBroadcasting$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;-><init>(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$snackbarHostState:Landroidx/compose/material3/SnackbarHostState;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$body:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$positive:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$negative:Ljava/lang/String;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->label:I

    invoke-virtual {p1, v1, p0}, Landroidx/compose/material3/SnackbarHostState;->showSnackbar(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;->$checkStopBroadcasting$delegate:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/material3/SnackbarResult;

    sget-object v2, Landroidx/compose/material3/SnackbarResult;->ActionPerformed:Landroidx/compose/material3/SnackbarResult;

    if-ne p1, v2, :cond_3

    invoke-interface {v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;->transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
