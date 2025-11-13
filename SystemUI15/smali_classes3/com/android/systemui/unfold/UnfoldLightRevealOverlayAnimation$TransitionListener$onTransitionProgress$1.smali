.class final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;
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
.field final synthetic $progress:F

.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    iput p2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->$progress:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    sget v1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    iget p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$TransitionListener$onTransitionProgress$1;->$progress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->calculateRevealAmount(Ljava/lang/Float;)F

    const/4 p0, 0x0

    throw p0
.end method
