.class public abstract Lcom/android/app/tracing/TraceUtilsKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final beginSlice(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static final endSlice()V
    .locals 2

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
