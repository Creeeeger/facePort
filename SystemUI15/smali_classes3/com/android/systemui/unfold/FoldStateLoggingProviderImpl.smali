.class public final Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/FoldStateLoggingProvider;
.implements Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;


# instance fields
.field public actionStartMillis:Ljava/lang/Long;

.field public final clock:Lcom/android/systemui/util/time/SystemClock;

.field public final foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;

.field public lastState:Ljava/lang/Integer;

.field public final outputListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->foldStateProvider:Lcom/android/systemui/unfold/updates/FoldStateProvider;

    iput-object p2, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->clock:Lcom/android/systemui/util/time/SystemClock;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->outputListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/FoldStateLogger;

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->outputListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dispatchState(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->clock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->lastState:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->actionStartMillis:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v0, v3

    new-instance v3, Lcom/android/systemui/unfold/FoldStateChange;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v2, p1, v0, v1}, Lcom/android/systemui/unfold/FoldStateChange;-><init>(IIJ)V

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->outputListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/FoldStateLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x19e

    iget v2, v3, Lcom/android/systemui/unfold/FoldStateChange;->previous:I

    iget v4, v3, Lcom/android/systemui/unfold/FoldStateChange;->current:I

    iget-wide v5, v3, Lcom/android/systemui/unfold/FoldStateChange;->dtMillis:J

    invoke-static {v1, v2, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->actionStartMillis:Ljava/lang/Long;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->lastState:Ljava/lang/Integer;

    return-void
.end method

.method public final onFoldUpdate(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->clock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v0, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->dispatchState(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->dispatchState(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->dispatchState(I)V

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->actionStartMillis:Ljava/lang/Long;

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->lastState:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->actionStartMillis:Ljava/lang/Long;

    :goto_0
    return-void
.end method

.method public final onUnfoldedScreenAvailable()V
    .locals 1

    const-string p0, "FoldStateLoggingProviderImpl"

    const-string v0, "Unfolded screen available"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/FoldStateLogger;

    iget-object p0, p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;->outputListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
