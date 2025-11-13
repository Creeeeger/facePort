.class public final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionFinished$1;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionFinished$1;-><init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;)V

    sget v1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->$r8$clinit:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->executeInBackground(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 1

    new-instance v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;-><init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;F)V

    sget p1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->$r8$clinit:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->executeInBackground(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onTransitionStarted()V
    .locals 1

    sget v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
