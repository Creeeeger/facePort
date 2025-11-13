.class public final Lcom/android/systemui/unfold/FoldAodAnimationController$FoldListener;
.super Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/systemui/unfold/FoldAodAnimationController;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldListener$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldListener$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    invoke-direct {p0, v0, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method
