.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$3$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->isGrayscaleThumbnail:Z

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->sessionControllers:Landroidx/lifecycle/CoroutineLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-boolean v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->isGrayscaleThumbnail:Z

    iput-boolean v0, p2, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->isGrayscaleThumbnail:Z

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
