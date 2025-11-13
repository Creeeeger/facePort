.class public final Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final count:I

.field public volatile disposed:Z

.field public final execTime:J

.field public final run:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->run:Ljava/lang/Runnable;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->execTime:J

    iput p3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->count:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;

    iget-wide v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->execTime:J

    iget-wide v2, p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->execTime:J

    sget v4, Lio/reactivex/internal/functions/ObjectHelper;->$r8$clinit:I

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-gez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    iget p0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->count:I

    iget p1, p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable;->count:I

    if-ge p0, p1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    if-le p0, p1, :cond_3

    move v1, v2

    :cond_3
    :goto_1
    move v0, v1

    :cond_4
    return v0
.end method
