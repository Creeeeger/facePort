.class public Landroid/window/SystemPerformanceHinter$HighPerfSession;
.super Ljava/lang/Object;
.source "SystemPerformanceHinter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SystemPerformanceHinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HighPerfSession"
.end annotation


# instance fields
.field private final blacklist displayId:I

.field private final blacklist hintFlags:I

.field private blacklist mTraceName:Ljava/lang/String;

.field private final blacklist reason:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/window/SystemPerformanceHinter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I
    .locals 0

    iget p0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->displayId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I
    .locals 0

    iget p0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->hintFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreason(Landroid/window/SystemPerformanceHinter$HighPerfSession;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->reason:Ljava/lang/String;

    return-object p0
.end method

.method protected constructor blacklist <init>(Landroid/window/SystemPerformanceHinter;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->hintFlags:I

    iput-object p4, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->reason:Ljava/lang/String;

    iput p3, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->displayId:I

    return-void
.end method


# virtual methods
.method blacklist asyncTraceBegin()Z
    .locals 5

    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    iget-wide v0, v0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfSession-d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    iget-wide v0, v0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "SystemPerformanceHinter"

    invoke-static {v0, v1, v4, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0
.end method

.method blacklist asyncTraceEnd()Z
    .locals 4

    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->mTraceName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    iget-wide v0, v0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    const-string v2, "SystemPerformanceHinter"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api close()V
    .locals 1

    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    invoke-static {v0, p0}, Landroid/window/SystemPerformanceHinter;->-$$Nest$mendSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    return-void
.end method

.method public whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->close()V

    return-void
.end method

.method public blacklist start()V
    .locals 1

    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    invoke-static {v0}, Landroid/window/SystemPerformanceHinter;->-$$Nest$fgetmActiveSessions(Landroid/window/SystemPerformanceHinter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/window/SystemPerformanceHinter$HighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    invoke-static {v0, p0}, Landroid/window/SystemPerformanceHinter;->-$$Nest$mstartSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    :cond_0
    return-void
.end method
