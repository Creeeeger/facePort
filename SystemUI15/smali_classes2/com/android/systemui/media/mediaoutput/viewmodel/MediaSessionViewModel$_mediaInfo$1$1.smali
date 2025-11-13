.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$_mediaInfo$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $this_apply:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MediatorLiveData;",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$_mediaInfo$1$1;->$this_apply:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$_mediaInfo$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$_mediaInfo$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->getNoSessionController()Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    if-nez v0, :cond_4

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isInvalidAction()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move-object v1, p1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$_mediaInfo$1$1;->$this_apply:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
