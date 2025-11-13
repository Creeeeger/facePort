.class public abstract Lcom/android/app/tracing/TraceProxy_platformKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p1, p2, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final asyncTraceForTrackEnd(ILjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method
