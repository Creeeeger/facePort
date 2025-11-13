.class final Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $changeScreen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $mediaSessionViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

.field final synthetic $sessionAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1;->$mediaSessionViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1;->$sessionAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x51

    const/16 p3, 0x10

    if-ne p1, p3, :cond_1

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaOutputState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;

    sget-object p3, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;->rememberButtonVisibleState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    move-result-object p3

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1;->$mediaSessionViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->mediaInfo:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$invoke$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$invoke$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/16 v4, 0x38

    const/4 v5, 0x2

    const-string v2, ""

    const/4 v3, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$1;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1;->$sessionAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    const/4 v8, 0x0

    invoke-direct {v2, v3, v0, v8}, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$2;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1;->$mediaSessionViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1;->$sessionAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;)V

    const v1, -0x6aa09918

    invoke-static {v1, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/16 v6, 0x6006

    const/16 v7, 0xe

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/material/ContainerBoxKt;->ContainerBox(ZLcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$3;

    invoke-direct {v1, p1, v8}, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$3;-><init>(Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 p1, 0x3

    invoke-static {v8, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v2

    invoke-static {v8, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v3

    new-instance p1, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$4;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1;->$changeScreen:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$4;-><init>(Lkotlin/jvm/functions/Function1;)V

    const p0, 0x194d9e4b

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const v7, 0x30d80

    const/16 v8, 0x12

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
