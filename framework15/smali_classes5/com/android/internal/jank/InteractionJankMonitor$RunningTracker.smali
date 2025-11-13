.class Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RunningTracker"
.end annotation


# instance fields
.field public final blacklist mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

.field public final blacklist mTimeoutAction:Ljava/lang/Runnable;

.field public final blacklist mTracker:Lcom/android/internal/jank/FrameTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    iput-object p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTimeoutAction:Ljava/lang/Runnable;

    return-void
.end method
