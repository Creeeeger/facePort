.class public Landroid/window/SystemPerformanceHinter;
.super Ljava/lang/Object;
.source "SystemPerformanceHinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SystemPerformanceHinter$DisplayRootProvider;,
        Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;,
        Landroid/window/SystemPerformanceHinter$HighPerfSession;,
        Landroid/window/SystemPerformanceHinter$HintFlags;
    }
.end annotation


# static fields
.field public static final blacklist HINT_ADPF:I = 0x4

.field public static final blacklist HINT_ALL:I = 0x7

.field private static final blacklist HINT_GLOBAL:I = 0x5

.field private static final blacklist HINT_NO_OP:I = 0x0

.field private static final blacklist HINT_PER_DISPLAY:I = 0x2

.field public static final blacklist HINT_SF:I = 0x3

.field public static final blacklist HINT_SF_EARLY_WAKEUP:I = 0x1

.field public static final blacklist HINT_SF_FRAME_RATE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SystemPerformanceHinter"


# instance fields
.field private final blacklist mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/SystemPerformanceHinter$HighPerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAdpfSession:Landroid/os/PerformanceHintManager$Session;

.field private blacklist mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

.field private final blacklist mPerfHintManager:Landroid/os/PerformanceHintManager;

.field public blacklist mTraceTag:J

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveSessions(Landroid/window/SystemPerformanceHinter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mendSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->endSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartSession(Landroid/window/SystemPerformanceHinter;Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SystemPerformanceHinter;->startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/window/SystemPerformanceHinter;-><init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/window/SystemPerformanceHinter$DisplayRootProvider;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/window/SystemPerformanceHinter$DisplayRootProvider;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    const-class v0, Landroid/os/PerformanceHintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerformanceHintManager;

    iput-object v0, p0, Landroid/window/SystemPerformanceHinter;->mPerfHintManager:Landroid/os/PerformanceHintManager;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private blacklist asyncTraceBegin(II)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfHint-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "PerfHint-adpf"

    goto :goto_0

    :pswitch_2
    const-string v0, "PerfHint-framerate"

    goto :goto_0

    :pswitch_3
    const-string v0, "PerfHint-early_wakeup"

    :goto_0
    nop

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    iget-wide v2, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v4, p1

    const-string v5, "SystemPerformanceHinter"

    invoke-static {v2, v3, v5, v1, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist asyncTraceEnd(I)V
    .locals 4

    iget-wide v0, p0, Landroid/window/SystemPerformanceHinter;->mTraceTag:J

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, p1

    const-string v3, "SystemPerformanceHinter"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method private blacklist calculateActiveHintFlags(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v2

    and-int/2addr v2, p1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private blacklist calculateActiveHintFlagsForDisplay(II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-static {v3}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    and-int/2addr v3, p1

    or-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private blacklist endSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .locals 10

    invoke-virtual {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->asyncTraceEnd()Z

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v2

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v3

    iget-object v5, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v1

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v4}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v7

    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v7, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    :cond_0
    const/4 v7, 0x1

    invoke-direct {p0, v2, v1, v7}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v7}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    :cond_1
    const/4 v7, 0x4

    invoke-direct {p0, v2, v1, v7}, Landroid/window/SystemPerformanceHinter;->nowDisabled(III)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    invoke-virtual {v8, v4}, Landroid/os/PerformanceHintManager$Session;->sendHint(I)V

    if-eqz v0, :cond_2

    invoke-direct {p0, v7}, Landroid/window/SystemPerformanceHinter;->asyncTraceEnd(I)V

    :cond_2
    if-eqz v6, :cond_3

    iget-object v4, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    :cond_3
    return-void
.end method

.method private blacklist nowDisabled(III)Z
    .locals 1

    and-int v0, p1, p3

    if-eqz v0, :cond_0

    and-int v0, p2, p3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist nowEnabled(III)Z
    .locals 1

    and-int v0, p1, p3

    if-nez v0, :cond_0

    and-int v0, p2, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V
    .locals 12

    invoke-virtual {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->asyncTraceBegin()Z

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v2

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v3

    iget-object v5, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlags(I)I

    move-result v5

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v6

    invoke-direct {p0, v4, v6}, Landroid/window/SystemPerformanceHinter;->calculateActiveHintFlagsForDisplay(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p0, v3, v6, v4}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v11

    invoke-interface {v8, v11}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v8

    iget-object v11, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v11, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v11, v8, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setFrameRateCategory(Landroid/view/SurfaceControl;IZ)Landroid/view/SurfaceControl$Transaction;

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v1

    invoke-direct {p0, v4, v1}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    :cond_0
    invoke-direct {p0, v2, v5, v10}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v10, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v2, v5, v1}, Landroid/window/SystemPerformanceHinter;->nowEnabled(III)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    invoke-virtual {v8, v9}, Landroid/os/PerformanceHintManager$Session;->sendHint(I)V

    if-eqz v0, :cond_2

    invoke-direct {p0, v1, v4}, Landroid/window/SystemPerformanceHinter;->asyncTraceBegin(II)V

    :cond_2
    if-eqz v7, :cond_3

    iget-object v1, p0, Landroid/window/SystemPerformanceHinter;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->applyAsyncUnsafe()V

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;
    .locals 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Using SF frame rate hints requires a valid display root provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    if-nez v0, :cond_3

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Using ADPF hints requires an ADPF session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/window/SystemPerformanceHinter;->mDisplayRootProvider:Landroid/window/SystemPerformanceHinter$DisplayRootProvider;

    invoke-interface {v0, p2}, Landroid/window/SystemPerformanceHinter$DisplayRootProvider;->getRootForDisplay(I)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No display root for displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemPerformanceHinter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerfHint-NoDisplayRoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    new-instance v0, Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;

    invoke-direct {v0, p0}, Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;-><init>(Landroid/window/SystemPerformanceHinter;)V

    return-object v0

    :cond_4
    new-instance v0, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/window/SystemPerformanceHinter$HighPerfSession;-><init>(Landroid/window/SystemPerformanceHinter;IILjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allow empty hint flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SystemPerformanceHinter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Active sessions ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/window/SystemPerformanceHinter;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemPerformanceHinter$HighPerfSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetreason(Landroid/window/SystemPerformanceHinter$HighPerfSession;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgetdisplayId(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setAdpfSession(Landroid/os/PerformanceHintManager$Session;)V
    .locals 0

    iput-object p1, p0, Landroid/window/SystemPerformanceHinter;->mAdpfSession:Landroid/os/PerformanceHintManager$Session;

    return-void
.end method

.method public blacklist startSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Landroid/window/SystemPerformanceHinter;->createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;

    move-result-object v0

    invoke-static {v0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->-$$Nest$fgethintFlags(Landroid/window/SystemPerformanceHinter$HighPerfSession;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Landroid/window/SystemPerformanceHinter;->startSession(Landroid/window/SystemPerformanceHinter$HighPerfSession;)V

    :cond_0
    return-object v0
.end method
