.class public final Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/InflationTask;
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field public mCancelled:Z

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mInflateOrigin:Ljava/lang/Throwable;

.field public mInflateStartTimeMs:J

.field public mListener:Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowInflationFinishedListener;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mCancelled:Z

    return-void
.end method

.method public inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowInflationFinishedListener;)V
    .locals 9

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "inflate requested here"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mListener:Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowInflationFinishedListener;

    new-instance v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    new-instance p5, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;

    invoke-direct {p5, p3, v0, v1}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowAsyncLayoutInflater;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;)V

    invoke-direct {v2, p1, p5}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;Landroidx/asynclayoutinflater/view/AsyncLayoutFactory;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    iput-object p0, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object p5, Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger$logInflateStart$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger$logInflateStart$2;

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "RowInflaterTask"

    invoke-virtual {v1, v8, p1, p5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p3

    move-object p5, p1

    check-cast p5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p3, p5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mInflateStartTimeMs:J

    :try_start_0
    iget-object v6, v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->mInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;

    const v3, 0x7f0d0460

    move-object v4, p2

    move-object v5, p0

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflateInternal(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;Landroid/view/LayoutInflater;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error in AsyncLayoutInflation: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method public final onInflateFinished(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 8

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mInflateStartTimeMs:J

    sub-long/2addr v0, v2

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mCancelled:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger$logInflateFinish$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger$logInflateFinish$2;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/RowInflaterTaskLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "RowInflaterTask"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p2

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-wide v0, v5, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    iput-boolean v2, v5, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mCancelled:Z

    if-nez p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v7, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mListener:Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$RowInflationFinishedListener;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$$ExternalSyntheticLambda0;->onInflationFinished(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    const-string p2, "Error in inflation finished listener: "

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    invoke-static {v6, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
