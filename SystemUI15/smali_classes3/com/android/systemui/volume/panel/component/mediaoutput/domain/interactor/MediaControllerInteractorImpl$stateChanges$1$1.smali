.class final Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerInteractorImpl$stateChanges$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;

.field final synthetic $mediaController:Landroid/media/session/MediaController;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaController;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerInteractorImpl$stateChanges$1$1;->$mediaController:Landroid/media/session/MediaController;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerInteractorImpl$stateChanges$1$1;->$callback:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerInteractorImpl$stateChanges$1$1;->$mediaController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerInteractorImpl$stateChanges$1$1;->$callback:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
