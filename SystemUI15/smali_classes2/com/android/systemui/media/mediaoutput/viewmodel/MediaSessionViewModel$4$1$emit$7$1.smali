.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $$this$launch:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

.field public final synthetic this$1:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1;->this$1:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    if-nez p1, :cond_0

    const-string p1, "MediaSessionViewModel"

    const-string v3, "mediaInfo is null"

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1;->this$1:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->packageName:Ljava/lang/String;

    invoke-interface {p1, v3}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isSame(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isInvalidAction()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p0, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->_mediaInfo:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1$2;

    invoke-direct {p1, v2, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$4$1$emit$7$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method
