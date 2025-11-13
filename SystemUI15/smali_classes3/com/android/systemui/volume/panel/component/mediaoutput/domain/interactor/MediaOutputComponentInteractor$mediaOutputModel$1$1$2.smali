.class final Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $isInAudioSharing:Z

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->$isInAudioSharing:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;

    check-cast p2, Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->$isInAudioSharing:Z

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$Idle;

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->$isInAudioSharing:Z

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$Idle;-><init>(Lcom/android/systemui/volume/domain/model/AudioOutputDevice;Z)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaOutputComponentInteractor$mediaOutputModel$1$1$2;->$isInAudioSharing:Z

    iget-object v2, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-boolean p1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/SessionWithPlaybackState;->isPlaybackActive:Z

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;-><init>(Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;ZLcom/android/systemui/volume/domain/model/AudioOutputDevice;Z)V

    move-object p1, v1

    :goto_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
