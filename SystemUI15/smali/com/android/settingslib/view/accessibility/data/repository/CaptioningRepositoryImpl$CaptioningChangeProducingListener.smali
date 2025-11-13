.class public final Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final scope:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener;->scope:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final onSystemAudioCaptioningChanged(Z)V
    .locals 3

    new-instance v0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemAudioCaptioningEnabled;

    invoke-direct {v0, p1}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemAudioCaptioningEnabled;-><init>(Z)V

    iget-object p1, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener;->scope:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener$emitChange$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener$emitChange$1;-><init>(Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener;Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onSystemAudioCaptioningUiChanged(Z)V
    .locals 3

    new-instance v0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;

    invoke-direct {v0, p1}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;-><init>(Z)V

    iget-object p1, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener;->scope:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener$emitChange$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener$emitChange$1;-><init>(Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChangeProducingListener;Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
