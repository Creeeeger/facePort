.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final synthetic blacklist f$1:Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    iput p3, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;->f$2:I

    iput p4, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;->f$1:Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    iget v2, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;->f$2:I

    iget v3, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$cancel$6$com-android-internal-jank-InteractionJankMonitor(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;II)V

    return-void
.end method
