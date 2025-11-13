.class final Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $mediaSessionViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

.field final synthetic $sessionAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$2;->$mediaSessionViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$2;->$sessionAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p2, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$2;->$mediaSessionViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalAudioPathInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/PhoneScreenKt$PhoneScreen$1$2;->$sessionAudioPathViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p0

    filled-new-array {p2, p0}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$PhoneScreenKt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$PhoneScreenKt;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$PhoneScreenKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v0, 0x38

    invoke-static {p0, p2, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
