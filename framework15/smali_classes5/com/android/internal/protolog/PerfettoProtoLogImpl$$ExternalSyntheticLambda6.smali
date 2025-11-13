.class public final synthetic Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/proto/ProtoInputStream;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/proto/ProtoInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$0:Landroid/util/proto/ProtoInputStream;

    return-void
.end method


# virtual methods
.method public final blacklist trace(Landroid/tracing/perfetto/TracingContext;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;->f$0:Landroid/util/proto/ProtoInputStream;

    invoke-static {v0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$dumpTransitionTraceConfig$2(Landroid/util/proto/ProtoInputStream;Landroid/tracing/perfetto/TracingContext;)V

    return-void
.end method
