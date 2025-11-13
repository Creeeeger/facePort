.class final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$onScreenTurningOn$1;
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
.field final synthetic $onOverlayReady:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$onScreenTurningOn$1;->$onOverlayReady:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    const-string v0, "UnfoldLightRevealOverlayAnimation#onScreenTurningOn"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    sget v1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    iget-boolean v1, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->isUnfoldHandled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->Companion:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Companion;

    iget-object v0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Companion;->areAnimationsEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    sget-object v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;->UNFOLD:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    iput-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->overlayAddReason:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$AddOverlayReason;

    invoke-virtual {p0, v2}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->calculateRevealAmount(Ljava/lang/Float;)F

    throw v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$onScreenTurningOn$1;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
