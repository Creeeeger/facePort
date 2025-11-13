.class public final synthetic Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/FrameTracker;

.field public final synthetic blacklist f$1:[Landroid/view/SurfaceControl$JankData;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/FrameTracker;[Landroid/view/SurfaceControl$JankData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/jank/FrameTracker;

    iput-object p2, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;->f$1:[Landroid/view/SurfaceControl$JankData;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/jank/FrameTracker;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;->f$1:[Landroid/view/SurfaceControl$JankData;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker;->lambda$onJankDataAvailable$1$com-android-internal-jank-FrameTracker([Landroid/view/SurfaceControl$JankData;)V

    return-void
.end method
