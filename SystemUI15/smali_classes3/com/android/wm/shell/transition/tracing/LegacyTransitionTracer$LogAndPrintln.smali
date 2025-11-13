.class public final Lcom/android/wm/shell/transition/tracing/LegacyTransitionTracer$LogAndPrintln;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static -$$Nest$sme(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "ShellTransitionTracer"

    const-string v1, "Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string v0, "ERROR: Tracing is not supported on user builds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
