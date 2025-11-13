.class public final Lcom/android/app/tracing/TraceStateLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final instantEvent:Z

.field public final logOnlyIfDifferent:Z

.field public final logcat:Z

.field public previousValue:Ljava/lang/String;

.field public final trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/app/tracing/TraceStateLogger;->trackName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/app/tracing/TraceStateLogger;->logOnlyIfDifferent:Z

    iput-boolean p3, p0, Lcom/android/app/tracing/TraceStateLogger;->instantEvent:Z

    iput-boolean p4, p0, Lcom/android/app/tracing/TraceStateLogger;->logcat:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/app/tracing/TraceStateLogger;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/app/tracing/TraceStateLogger;->instantEvent:Z

    iget-object v1, p0, Lcom/android/app/tracing/TraceStateLogger;->trackName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v1, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/app/tracing/TraceStateLogger;->logOnlyIfDifferent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/app/tracing/TraceStateLogger;->previousValue:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/app/tracing/TraceStateLogger;->previousValue:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v2, v1}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_2
    invoke-static {v2, v1, p1}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/app/tracing/TraceStateLogger;->logcat:Z

    if-eqz v0, :cond_3

    const-string v0, "newValue: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object p1, p0, Lcom/android/app/tracing/TraceStateLogger;->previousValue:Ljava/lang/String;

    return-void
.end method
