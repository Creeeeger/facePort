.class public final Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;
.super Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLatencyTracker;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener$1;-><init>(Lcom/android/systemui/unfold/UnfoldLatencyTracker;)V

    invoke-direct {p0, p2, v0}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method
