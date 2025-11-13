.class public final synthetic Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/protolog/PerfettoProtoLogImpl;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Lcom/android/internal/protolog/common/LogLevel;

.field public final synthetic blacklist f$3:[Ljava/lang/Object;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:J

.field public final synthetic blacklist f$6:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    iput-object p2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$2:Lcom/android/internal/protolog/common/LogLevel;

    iput-object p4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$3:[Ljava/lang/Object;

    iput p5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$4:I

    iput-wide p6, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$5:J

    iput-wide p8, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$6:J

    return-void
.end method


# virtual methods
.method public final blacklist trace(Landroid/tracing/perfetto/TracingContext;)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$2:Lcom/android/internal/protolog/common/LogLevel;

    iget-object v3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$3:[Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$4:I

    iget-wide v5, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$5:J

    iget-wide v7, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;->f$6:J

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->$r8$lambda$QZV8PLDMgVTfgSjo-VqpZyP7eik(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;IJJLandroid/tracing/perfetto/TracingContext;)V

    return-void
.end method
