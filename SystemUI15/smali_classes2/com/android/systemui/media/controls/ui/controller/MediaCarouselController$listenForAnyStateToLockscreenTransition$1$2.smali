.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$listenForAnyStateToLockscreenTransition$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$listenForAnyStateToLockscreenTransition$1$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$listenForAnyStateToLockscreenTransition$1$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->allowMediaPlayerOnLockScreen:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updateHostVisibility:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
