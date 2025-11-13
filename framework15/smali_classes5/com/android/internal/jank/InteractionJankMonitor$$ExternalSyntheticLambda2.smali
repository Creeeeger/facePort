.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    return-void
.end method


# virtual methods
.method public final blacklist invoke(JJJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$begin$1(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;JJJ)V

    return-void
.end method
