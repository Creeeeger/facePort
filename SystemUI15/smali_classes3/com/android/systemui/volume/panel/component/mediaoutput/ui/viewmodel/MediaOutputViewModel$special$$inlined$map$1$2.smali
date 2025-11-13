.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel;

    instance-of p2, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$Idle;

    const v2, 0x7f130bdf

    iget-object v4, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;

    if-eqz p2, :cond_3

    iget-object p2, v4, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->context:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    instance-of p2, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;

    iget-boolean v5, p2, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isPlaybackActive:Z

    if-eqz v5, :cond_4

    iget-object v2, v4, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->context:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-object p2, p2, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->appLabel:Ljava/lang/CharSequence;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v5, 0x7f130bd6

    invoke-virtual {v2, v5, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    iget-object p2, v4, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->context:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_5
    instance-of p2, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$Calling;

    if-eqz p2, :cond_8

    iget-object p2, v4, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->context:Landroid/content/Context;

    const v2, 0x7f130bde

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/ConnectedDeviceViewModel;

    invoke-interface {p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel;->isInAudioSharing()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object p1, v4, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel;->context:Landroid/content/Context;

    const v4, 0x7f1301cb

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel;->getDevice()Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/volume/domain/model/AudioOutputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-direct {v2, p2, p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/ConnectedDeviceViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput v3, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
