.class public final Lcom/android/systemui/complication/ComplicationCollectionLiveData;
.super Landroidx/lifecycle/LiveData;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mStateControllerCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    new-instance v0, Lcom/android/systemui/complication/ComplicationCollectionLiveData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/complication/ComplicationCollectionLiveData$1;-><init>(Lcom/android/systemui/complication/ComplicationCollectionLiveData;)V

    iput-object v0, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mStateControllerCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mStateControllerCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    iget-object v1, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    invoke-virtual {v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->getComplications()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onInactive()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mStateControllerCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
